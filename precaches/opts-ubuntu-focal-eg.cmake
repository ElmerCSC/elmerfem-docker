
SET(WITH_MPI TRUE CACHE BOOL "")
SET(WITH_LUA TRUE CACHE BOOL "")
SET(CMAKE_BUILD_TYPE "RelWithDebInfo" CACHE STRING "")
SET(WITH_Mumps TRUE CACHE BOOL "")
SET(WITH_Hypre TRUE CACHE BOOL "")
SET(Hypre_INCLUDE_DIR "/usr/include/hypre" CACHE PATH "")
SET(WITH_ElmerIce TRUE CACHE BOOL "")

SET(ELMER_SOLVER_HOME "/usr/share/elmersolver" CACHE PATH "")

# ElmerGUI related.
SET(WITH_ELMERGUI TRUE CACHE BOOL "")
SET(WITH_OCC TRUE CACHE BOOL "")
SET(WITH_VTK FALSE CACHE BOOL "")
SET(WITH_PARAVIEW TRUE CACHE BOOL "")
SET(WITH_QWT FALSE CACHE BOOL "")
SET(WITH_QT5 TRUE CACHE BOOL "")
SET(QWT_LIBRARY "/usr/lib/libqwt-qt5.so.6" CACHE FILE "qwt library file name")

# CPack related
SET(MAKE_RPM_PACKAGE FALSE CACHE BOOL "")
SET(CPACK_DEBIAN_PACKAGE_DEPENDS 
  "libopenblas-base, libmumps-5.2.1, libopenmpi3, libparmetis4.0, libmetis5, libhypre-2.18.2, libblas.so.3, liblapack.so.3 , liboce-modeling11, liboce-foundation11, libqt5widgets5, libqt5script5, libqt5core5a, libqt5gui5, libqt5help5, libqt5opengl5, libvtk6.3 , libvtk6.3-qt" CACHE STRING "")  
SET(BYPASS_DEB_DEPENDENCIES TRUE CACHE BOOL "") # Elmer packaging specific. Dont try to automatically pick required packages.

# docker tries to run mpi as root:
SET(MPIEXEC_PREFLAGS "--allow-run-as-root" CACHE STRING "")
