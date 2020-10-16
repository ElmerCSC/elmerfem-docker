# Elmer build apparatuses for various Linux distros using docker Dockerfiles 

Currently ubuntu-artful and debian-stretch work fine. Others are remnants of past.

Usage:
  * Set env variable `ELMER_SOURCE_DIR` point at elmer source directory.
  * Run `make build-<flavor>` where `<flavor>` corresponds to `Dockerfile-<flavor>` and `precaches/opts-<flavor>.cmake`
    * You can also do `make conf-<flavor>` to run cmake only or `make bash-<flavor>` to explore build environment.

# TODO

* Cleanup
* Build ElmerGUI separately or make elmergui build variants
* ctest runs
