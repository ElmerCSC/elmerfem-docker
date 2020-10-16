#SET(CMAKE_BUILD_TYPE "RelWithDebInfo" CACHE STRING "")
SET(CMAKE_C_COMPILER "clang" CACHE STRING "")
SET(CMAKE_CXX_COMPILER "clang++" CACHE STRING "")
SET(CMAKE_Fortran_COMPILER "gfortran" CACHE STRING "")
SET(RESET_ELMER_REVISION TRUE CACHE BOOL "") 
SET(WITH_OpenMP FALSE CACHE BOOL "")
SET(WITH_MPI TRUE CACHE BOOL "") 
SET(MAKE_RPM_PACKAGE FALSE CACHE BOOL "")
SET(MAKE_DEB_PACKAGE FALSE CACHE BOOL "")
SET(BLAS_LIBRARIES /usr/lib/libopenblas.so CACHE FILE "")
SET(LAPACK_LIBRARIES /usr/lib/libopenblas.so CACHE FILE "")
#SET(ELMER_FEM_REVISION omp-test CACHE STRING "")
