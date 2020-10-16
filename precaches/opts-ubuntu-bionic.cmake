SET(WITH_MPI TRUE CACHE BOOL "")
SET(CMAKE_BUILD_TYPE "RelWithDebInfo" CACHE STRING "")
SET(WITH_MATC TRUE CACHE BOOL "")
SET(WITH_Mumps TRUE CACHE BOOL "")
SET(WITH_Hypre TRUE CACHE BOOL "")
SET(Hypre_INCLUDE_DIR "/usr/include/hypre" CACHE PATH "")
SET(HYPREROOT "/usr" CACHE PATH "")
SET(WITH_ElmerIce TRUE CACHE BOOL "")

SET(ELMER_SOLVER_HOME "/usr/share/elmersolver" CACHE PATH "")

# ElmerGUI related.
SET(WITH_ELMERGUI FALSE CACHE BOOL "")

SET(MAKE_RPM_PACKAGE FALSE CACHE BOOL "")
SET(CPACK_DEBIAN_PACKAGE_DEPENDS 
  "libopenblas-base, libmumps-5.1.2, libopenmpi2, libparmetis4.0, libmetis5, libhypre-2.13.0, libblas.so.3, liblapack.so.3" 
  CACHE STRING "")
SET(BYPASS_DEB_DEPENDENCIES TRUE CACHE BOOL "") # Elmer packaging specific. Dont try to automatically pick required packages.

# docker tries to run mpi as root:
SET(MPIEXEC_PREFLAGS "--allow-run-as-root" CACHE STRING "")
