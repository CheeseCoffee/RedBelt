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
CMAKE_SOURCE_DIR = /cygdrive/c/Users/akbar/CLionProjects/RedBelt/SortBy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/akbar/CLionProjects/RedBelt/SortBy/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SortBy.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SortBy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SortBy.dir/flags.make

CMakeFiles/SortBy.dir/update_field.cpp.o: CMakeFiles/SortBy.dir/flags.make
CMakeFiles/SortBy.dir/update_field.cpp.o: ../update_field.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/akbar/CLionProjects/RedBelt/SortBy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SortBy.dir/update_field.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SortBy.dir/update_field.cpp.o -c /cygdrive/c/Users/akbar/CLionProjects/RedBelt/SortBy/update_field.cpp

CMakeFiles/SortBy.dir/update_field.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SortBy.dir/update_field.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/akbar/CLionProjects/RedBelt/SortBy/update_field.cpp > CMakeFiles/SortBy.dir/update_field.cpp.i

CMakeFiles/SortBy.dir/update_field.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SortBy.dir/update_field.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/akbar/CLionProjects/RedBelt/SortBy/update_field.cpp -o CMakeFiles/SortBy.dir/update_field.cpp.s

# Object files for target SortBy
SortBy_OBJECTS = \
"CMakeFiles/SortBy.dir/update_field.cpp.o"

# External object files for target SortBy
SortBy_EXTERNAL_OBJECTS =

SortBy.exe: CMakeFiles/SortBy.dir/update_field.cpp.o
SortBy.exe: CMakeFiles/SortBy.dir/build.make
SortBy.exe: CMakeFiles/SortBy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/akbar/CLionProjects/RedBelt/SortBy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SortBy.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SortBy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SortBy.dir/build: SortBy.exe

.PHONY : CMakeFiles/SortBy.dir/build

CMakeFiles/SortBy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SortBy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SortBy.dir/clean

CMakeFiles/SortBy.dir/depend:
	cd /cygdrive/c/Users/akbar/CLionProjects/RedBelt/SortBy/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/akbar/CLionProjects/RedBelt/SortBy /cygdrive/c/Users/akbar/CLionProjects/RedBelt/SortBy /cygdrive/c/Users/akbar/CLionProjects/RedBelt/SortBy/cmake-build-debug /cygdrive/c/Users/akbar/CLionProjects/RedBelt/SortBy/cmake-build-debug /cygdrive/c/Users/akbar/CLionProjects/RedBelt/SortBy/cmake-build-debug/CMakeFiles/SortBy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SortBy.dir/depend

