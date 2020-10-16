SET(WITH_MPI TRUE CACHE BOOL "")
SET(CMAKE_BUILD_TYPE "RelWithDebInfo" CACHE STRING "")
SET(WITH_MATC TRUE CACHE BOOL "")
SET(WITH_Mumps TRUE CACHE BOOL "")
SET(WITH_Hypre TRUE CACHE BOOL "")
SET(WITH_ElmerIce TRUE CACHE BOOL "")
SET(ParMetis_LIBRARIES "/usr/lib/libparmetis.so" CACHE FILE "")
SET(ParMetis_INCLUDE_DIR "/usr/include" CACHE PATH "")
SET(HYPREROOT "/usr/lib/x86_64-linux-gnu" CACHE PATH "")
SET(HYPRE_INCLUDE_DIR "/usr/include/hypre" CACHE PATH "")
#SET(CMAKE_C_COMPILER /usr/bin/gcc-4.8 CACHE FILE "")
#SET(CMAKE_CXX_COMPILER /usr/bin/g++-4.8 CACHE FILE "")
#SET(CMAKE_Fortran_COMPILER /usr/bin/gfortran-4.8 CACHE FILE "")

SET(ELMER_SOLVER_HOME "/usr/share/elmersolver" CACHE PATH "")
SET(CMAKE_INSTALL_PREFIX "/usr" CACHE PATH "")

# On packaging
SET(CPACK_DEBIAN_PACKAGE_DEPENDS "libopenmpi2, libscotchparmetis-dev, libmetis5, libhypre-2.11.1, libblas.so.3, liblapack.so.3" CACHE STRING "")
SET(BYPASS_DEB_DEPENDENCIES TRUE CACHE BOOL "") # Elmer packaging specific. Dont try to automatically pick required packages.
SET(MAKE_RPM_PACKAGE FALSE CACHE BOOL "")
