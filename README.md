# Elmer build apparatuses for various Linux distros using docker Dockerfiles 

Currently ubuntu-artful and debian-stretch work fine. Others are remnants of past.

Usage:
  * Set env variable `ELMER_SOURCE_DIR` point at elmer source directory.
  * Run `make build-<flavor>` where `<flavor>` corresponds to `Dockerfile-<flavor>` and `precaches/opts-<flavor>.cmake`
    * You can also do `make conf-<flavor>` to run cmake only or `make bash-<flavor>` to explore build environment.
  * A special contained setup (initially only for ubuntu-focal) for using Docker to actually run Elmer simulations on your system is built by `make runenv-<flavor>`
    * This creates an image that contains an MPI-enabled Elmer installation that can be used to run Elmer simulations. Provided you are in the subdirectory where the input files reside, do a
    ```bash
    $ docker run -it -v $(pwd -LP):/home elmer-runenv-ubuntu-focal /usr/local/elmer/bin/ElmerSolver nameofyour.sif
    ````
    * or in case of a parallel run 
    ```bash
    $ run -it -v $(pwd -LP):/home elmer-runenv-ubuntu-focal mpirun --allow-run-as-root -np 6 /usr/local/elmer/bin/ElmerSolver nameofyour.sif
    ```
    
# TODO

* Build ElmerGUI separately or make elmergui build variants
* ctest runs
