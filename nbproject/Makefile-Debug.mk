#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/Controller.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f1

# Test Object Files
TESTOBJECTFILES= \
	${TESTDIR}/tests/ControllerTest.o \
	${TESTDIR}/tests/ControllerTestRunner.o

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libarmcontrollerlibrary.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libarmcontrollerlibrary.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libarmcontrollerlibrary.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libarmcontrollerlibrary.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libarmcontrollerlibrary.a

${OBJECTDIR}/Controller.o: Controller.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary/dist/Debug/GNU-Linux/libpartcontainerlibrary.a -I/mnt/seagate_1TB/Development/Robotkar_reboot/RoboticArmPartLibrary/dist/Debug/GNU-Linux/libroboticarmpartlibrary.a -include /mnt/seagate_1TB/Development/Robotkar_reboot/RoboticArmPartLibrary/AllParts.h -include /mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary/PartContainer.h -include /mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary/PartContainerManager.h -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Controller.o Controller.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-tests-subprojects .build-conf ${TESTFILES}
.build-tests-subprojects:
	cd /mnt/seagate_1TB/Development/Robotkar_reboot/SocketServer && ${MAKE}  -f Makefile CONF=Debug
	cd /mnt/seagate_1TB/Development/Robotkar_reboot/RoboticArmPartLibrary && ${MAKE}  -f Makefile CONF=Debug
	cd /mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary && ${MAKE}  -f Makefile CONF=Debug

${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/ControllerTest.o ${TESTDIR}/tests/ControllerTestRunner.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}  -lzmq -lpthread -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS} `cppunit-config --libs` /mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary/dist/Debug/GNU-Linux/libpartcontainerlibrary.a /mnt/seagate_1TB/Development/Robotkar_reboot/SocketServer/dist/Debug/GNU-Linux/libsocketserver.a /mnt/seagate_1TB/Development/Robotkar_reboot/CustomLibraries/libjson.a /mnt/seagate_1TB/Development/Robotkar_reboot/RoboticArmPartLibrary/dist/Debug/GNU-Linux/libroboticarmpartlibrary.a   


${TESTDIR}/tests/ControllerTest.o: tests/ControllerTest.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary/dist/Debug/GNU-Linux/libpartcontainerlibrary.a -I/mnt/seagate_1TB/Development/Robotkar_reboot/RoboticArmPartLibrary/dist/Debug/GNU-Linux/libroboticarmpartlibrary.a -include /mnt/seagate_1TB/Development/Robotkar_reboot/RoboticArmPartLibrary/AllParts.h -include /mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary/PartContainer.h -include /mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary/PartContainerManager.h -std=c++11 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/ControllerTest.o tests/ControllerTest.cpp


${TESTDIR}/tests/ControllerTestRunner.o: tests/ControllerTestRunner.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary/dist/Debug/GNU-Linux/libpartcontainerlibrary.a -I/mnt/seagate_1TB/Development/Robotkar_reboot/RoboticArmPartLibrary/dist/Debug/GNU-Linux/libroboticarmpartlibrary.a -include /mnt/seagate_1TB/Development/Robotkar_reboot/RoboticArmPartLibrary/AllParts.h -include /mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary/PartContainer.h -include /mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary/PartContainerManager.h -std=c++11 `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/ControllerTestRunner.o tests/ControllerTestRunner.cpp


${OBJECTDIR}/Controller_nomain.o: ${OBJECTDIR}/Controller.o Controller.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/Controller.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary/dist/Debug/GNU-Linux/libpartcontainerlibrary.a -I/mnt/seagate_1TB/Development/Robotkar_reboot/RoboticArmPartLibrary/dist/Debug/GNU-Linux/libroboticarmpartlibrary.a -include /mnt/seagate_1TB/Development/Robotkar_reboot/RoboticArmPartLibrary/AllParts.h -include /mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary/PartContainer.h -include /mnt/seagate_1TB/Development/Robotkar_reboot/PartContainerLibrary/PartContainerManager.h -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Controller_nomain.o Controller.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/Controller.o ${OBJECTDIR}/Controller_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libarmcontrollerlibrary.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
