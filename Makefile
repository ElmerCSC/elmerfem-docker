VPATH=stamps
buildprocs=1
ELMER_SOURCE_DIR?=$(HOME)/src/elmer/elmerfem
PKGTYPE?=DEB

.stamp:
	date > .stamp


ubuntu-%: .stamp precaches/opts-ubuntu-%.cmake
	docker build -f Dockerfiles/Dockerfile-$@ .

debian-%: .stamp precaches/opts-debian-%.cmake
	docker build -f Dockerfiles/Dockerfile-$@ .

test: .stamp ./precaches/opts-ubuntu-xenial.cmake
	docker build --tag=test -f Dockerfiles/Dockerfile-$@ .

.PHONY: .stamp

all: ubuntu-wily

build-%:
	docker build --tag=elmer-$* -f Dockerfiles/Dockerfile-$* .
	mkdir -p stamps
	touch stamps/$@

start-%: build-%
	docker run --cidfile=$*.id -d -v $(ELMER_SOURCE_DIR):/elmerfem -v $(shell pwd)/results/$*:/results -it elmer-$*:latest bash
	touch stamps/$@

conf-%: start-%
	docker exec $(shell cat $*.id) cmake -C ../opts-$*.cmake ../elmerfem
	touch stamps/$@

buildelmer-%: conf-%
	docker exec $(shell cat $*.id) make -j$(buildprocs) 
	touch stamps/$@

package-%: buildelmer-%
	mkdir -p results/$*
	docker exec $(shell cat $*.id) cpack -G $(PKGTYPE)
	docker exec $(shell cat $*.id) bash -c 'cp *.deb *.tar.gz /results'
	touch stamps/$@

bash-%: start-%
	docker exec -it $(shell cat $*.id) bash

kill-%: start-%
	docker kill $(shell cat $*.id)
	rm -f stamps/*-$*
	rm -f $*.id
	rm -f $^
