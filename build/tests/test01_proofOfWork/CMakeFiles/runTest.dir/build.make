# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/936/bin/cmake

# The command to remove a file.
RM = /snap/cmake/936/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build

# Include any dependencies generated for this target.
include tests/test01_proofOfWork/CMakeFiles/runTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/test01_proofOfWork/CMakeFiles/runTest.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/test01_proofOfWork/CMakeFiles/runTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/test01_proofOfWork/CMakeFiles/runTest.dir/flags.make

tests/test01_proofOfWork/CMakeFiles/runTest.dir/tests.cpp.o: tests/test01_proofOfWork/CMakeFiles/runTest.dir/flags.make
tests/test01_proofOfWork/CMakeFiles/runTest.dir/tests.cpp.o: ../tests/test01_proofOfWork/tests.cpp
tests/test01_proofOfWork/CMakeFiles/runTest.dir/tests.cpp.o: tests/test01_proofOfWork/CMakeFiles/runTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/test01_proofOfWork/CMakeFiles/runTest.dir/tests.cpp.o"
	cd /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build/tests/test01_proofOfWork && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/test01_proofOfWork/CMakeFiles/runTest.dir/tests.cpp.o -MF CMakeFiles/runTest.dir/tests.cpp.o.d -o CMakeFiles/runTest.dir/tests.cpp.o -c /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/tests/test01_proofOfWork/tests.cpp

tests/test01_proofOfWork/CMakeFiles/runTest.dir/tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runTest.dir/tests.cpp.i"
	cd /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build/tests/test01_proofOfWork && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/tests/test01_proofOfWork/tests.cpp > CMakeFiles/runTest.dir/tests.cpp.i

tests/test01_proofOfWork/CMakeFiles/runTest.dir/tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runTest.dir/tests.cpp.s"
	cd /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build/tests/test01_proofOfWork && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/tests/test01_proofOfWork/tests.cpp -o CMakeFiles/runTest.dir/tests.cpp.s

# Object files for target runTest
runTest_OBJECTS = \
"CMakeFiles/runTest.dir/tests.cpp.o"

# External object files for target runTest
runTest_EXTERNAL_OBJECTS =

tests/test01_proofOfWork/runTest: tests/test01_proofOfWork/CMakeFiles/runTest.dir/tests.cpp.o
tests/test01_proofOfWork/runTest: tests/test01_proofOfWork/CMakeFiles/runTest.dir/build.make
tests/test01_proofOfWork/runTest: /usr/local/lib/libgmock_main.so
tests/test01_proofOfWork/runTest: /usr/local/lib/libgtest_main.so
tests/test01_proofOfWork/runTest: libaddition.a
tests/test01_proofOfWork/runTest: /usr/local/lib/libgmock.so
tests/test01_proofOfWork/runTest: /usr/local/lib/libgtest.so
tests/test01_proofOfWork/runTest: tests/test01_proofOfWork/CMakeFiles/runTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable runTest"
	cd /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build/tests/test01_proofOfWork && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runTest.dir/link.txt --verbose=$(VERBOSE)
	cd /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build/tests/test01_proofOfWork && /snap/cmake/936/bin/cmake -D TEST_TARGET=runTest -D TEST_EXECUTABLE=/home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build/tests/test01_proofOfWork/runTest -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build/tests/test01_proofOfWork -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=runTest_TESTS -D CTEST_FILE=/home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build/tests/test01_proofOfWork/runTest[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /snap/cmake/936/share/cmake-3.21/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
tests/test01_proofOfWork/CMakeFiles/runTest.dir/build: tests/test01_proofOfWork/runTest
.PHONY : tests/test01_proofOfWork/CMakeFiles/runTest.dir/build

tests/test01_proofOfWork/CMakeFiles/runTest.dir/clean:
	cd /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build/tests/test01_proofOfWork && $(CMAKE_COMMAND) -P CMakeFiles/runTest.dir/cmake_clean.cmake
.PHONY : tests/test01_proofOfWork/CMakeFiles/runTest.dir/clean

tests/test01_proofOfWork/CMakeFiles/runTest.dir/depend:
	cd /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/tests/test01_proofOfWork /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build/tests/test01_proofOfWork /home/metamorph/00_data/100__programming/10_cpp/001_BasicStructure/007_template_2_gtest_Extendable_github/build/tests/test01_proofOfWork/CMakeFiles/runTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/test01_proofOfWork/CMakeFiles/runTest.dir/depend

