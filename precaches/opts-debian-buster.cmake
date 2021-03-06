### Elmer setup
SET(WITH_MPI TRUE CACHE BOOL "")
SET(CMAKE_BUILD_TYPE "RelWithDebInfo" CACHE STRING "")
SET(WITH_Mumps TRUE CACHE BOOL "")
SET(WITH_Hypre TRUE CACHE BOOL "")
SET(WITH_LUA TRUE CACHE BOOL "")
SET(WITH_ElmerIce TRUE CACHE BOOL "")
### where are my libraries?
SET(Hypre_INCLUDE_DIR "/usr/include/hypre" CACHE PATH "")
SET(ParMetis_LIBRARIES "/usr/lib/x86_64-linux-gnu/libparmetis.so" CACHE FILE "")
SET(ParMetis_INCLUDE_DIR "/usr/include" CACHE PATH "")
SET(HYPREROOT "/usr/lib/x86_64-linux-gnu" CACHE PATH "")
### ElmerGUI related (dropped, as VTK spoils the party)
SET(WITH_ELMERGUI FALSE CACHE BOOL "")
#SET(WITH_OCC TRUE CACHE BOOL "")
#SET(WITH_VTK FALSE CACHE BOOL "")
#SET(WITH_PARAVIEW TRUE CACHE BOOL "")
#SET(WITH_QWT TRUE CACHE BOOL "")
#SET(WITH_QT5 TRUE CACHE BOOL "")
#SET(QWT_LIBRARY "/usr/lib/libqwt-qt5.so" CACHE FILE "qwt library file name")
### docker tries to run mpi as root:
SET(MPIEXEC_PREFLAGS "--allow-run-as-root" CACHE STRING "")
