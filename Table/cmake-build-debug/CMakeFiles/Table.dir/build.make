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
CMAKE_SOURCE_DIR = /cygdrive/c/Users/akbar/CLionProjects/RedBelt/Table

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/akbar/CLionProjects/RedBelt/Table/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Table.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Table.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Table.dir/flags.make

CMakeFiles/Table.dir/table.cpp.o: CMakeFiles/Table.dir/flags.make
CMakeFiles/Table.dir/table.cpp.o: ../table.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/akbar/CLionProjects/RedBelt/Table/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Table.dir/table.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Table.dir/table.cpp.o -c /cygdrive/c/Users/akbar/CLionProjects/RedBelt/Table/table.cpp

CMakeFiles/Table.dir/table.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Table.dir/table.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/akbar/CLionProjects/RedBelt/Table/table.cpp > CMakeFiles/Table.dir/table.cpp.i

CMakeFiles/Table.dir/table.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Table.dir/table.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/akbar/CLionProjects/RedBelt/Table/table.cpp -o CMakeFiles/Table.dir/table.cpp.s

# Object files for target Table
Table_OBJECTS = \
"CMakeFiles/Table.dir/table.cpp.o"

# External object files for target Table
Table_EXTERNAL_OBJECTS =

Table.exe: CMakeFiles/Table.dir/table.cpp.o
Table.exe: CMakeFiles/Table.dir/build.make
Table.exe: CMakeFiles/Table.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/akbar/CLionProjects/RedBelt/Table/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Table.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Table.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Table.dir/build: Table.exe

.PHONY : CMakeFiles/Table.dir/build

CMakeFiles/Table.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Table.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Table.dir/clean

CMakeFiles/Table.dir/depend:
	cd /cygdrive/c/Users/akbar/CLionProjects/RedBelt/Table/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/akbar/CLionProjects/RedBelt/Table /cygdrive/c/Users/akbar/CLionProjects/RedBelt/Table /cygdrive/c/Users/akbar/CLionProjects/RedBelt/Table/cmake-build-debug /cygdrive/c/Users/akbar/CLionProjects/RedBelt/Table/cmake-build-debug /cygdrive/c/Users/akbar/CLionProjects/RedBelt/Table/cmake-build-debug/CMakeFiles/Table.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Table.dir/depend

