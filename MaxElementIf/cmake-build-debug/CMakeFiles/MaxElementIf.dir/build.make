# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /cygdrive/c/Users/akbar/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/akbar/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/akbar/CLionProjects/RedBelt/MaxElementIf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/akbar/CLionProjects/RedBelt/MaxElementIf/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MaxElementIf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MaxElementIf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MaxElementIf.dir/flags.make

CMakeFiles/MaxElementIf.dir/max_element_if.cpp.o: CMakeFiles/MaxElementIf.dir/flags.make
CMakeFiles/MaxElementIf.dir/max_element_if.cpp.o: ../max_element_if.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/akbar/CLionProjects/RedBelt/MaxElementIf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MaxElementIf.dir/max_element_if.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MaxElementIf.dir/max_element_if.cpp.o -c /cygdrive/c/Users/akbar/CLionProjects/RedBelt/MaxElementIf/max_element_if.cpp

CMakeFiles/MaxElementIf.dir/max_element_if.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MaxElementIf.dir/max_element_if.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/akbar/CLionProjects/RedBelt/MaxElementIf/max_element_if.cpp > CMakeFiles/MaxElementIf.dir/max_element_if.cpp.i

CMakeFiles/MaxElementIf.dir/max_element_if.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MaxElementIf.dir/max_element_if.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/akbar/CLionProjects/RedBelt/MaxElementIf/max_element_if.cpp -o CMakeFiles/MaxElementIf.dir/max_element_if.cpp.s

# Object files for target MaxElementIf
MaxElementIf_OBJECTS = \
"CMakeFiles/MaxElementIf.dir/max_element_if.cpp.o"

# External object files for target MaxElementIf
MaxElementIf_EXTERNAL_OBJECTS =

MaxElementIf.exe: CMakeFiles/MaxElementIf.dir/max_element_if.cpp.o
MaxElementIf.exe: CMakeFiles/MaxElementIf.dir/build.make
MaxElementIf.exe: CMakeFiles/MaxElementIf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/akbar/CLionProjects/RedBelt/MaxElementIf/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MaxElementIf.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MaxElementIf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MaxElementIf.dir/build: MaxElementIf.exe

.PHONY : CMakeFiles/MaxElementIf.dir/build

CMakeFiles/MaxElementIf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MaxElementIf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MaxElementIf.dir/clean

CMakeFiles/MaxElementIf.dir/depend:
	cd /cygdrive/c/Users/akbar/CLionProjects/RedBelt/MaxElementIf/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/akbar/CLionProjects/RedBelt/MaxElementIf /cygdrive/c/Users/akbar/CLionProjects/RedBelt/MaxElementIf /cygdrive/c/Users/akbar/CLionProjects/RedBelt/MaxElementIf/cmake-build-debug /cygdrive/c/Users/akbar/CLionProjects/RedBelt/MaxElementIf/cmake-build-debug /cygdrive/c/Users/akbar/CLionProjects/RedBelt/MaxElementIf/cmake-build-debug/CMakeFiles/MaxElementIf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MaxElementIf.dir/depend

