# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /Users/akbar/Downloads/cmake-3.18.0-Darwin-x86_64/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Users/akbar/Downloads/cmake-3.18.0-Darwin-x86_64/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/akbar/CLionProjects/RedBelt/Expresses

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/akbar/CLionProjects/RedBelt/Expresses/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Expresses.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Expresses.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Expresses.dir/flags.make

CMakeFiles/Expresses.dir/main.cpp.o: CMakeFiles/Expresses.dir/flags.make
CMakeFiles/Expresses.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/akbar/CLionProjects/RedBelt/Expresses/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Expresses.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Expresses.dir/main.cpp.o -c /Users/akbar/CLionProjects/RedBelt/Expresses/main.cpp

CMakeFiles/Expresses.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Expresses.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/akbar/CLionProjects/RedBelt/Expresses/main.cpp > CMakeFiles/Expresses.dir/main.cpp.i

CMakeFiles/Expresses.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Expresses.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/akbar/CLionProjects/RedBelt/Expresses/main.cpp -o CMakeFiles/Expresses.dir/main.cpp.s

# Object files for target Expresses
Expresses_OBJECTS = \
"CMakeFiles/Expresses.dir/main.cpp.o"

# External object files for target Expresses
Expresses_EXTERNAL_OBJECTS =

Expresses: CMakeFiles/Expresses.dir/main.cpp.o
Expresses: CMakeFiles/Expresses.dir/build.make
Expresses: CMakeFiles/Expresses.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/akbar/CLionProjects/RedBelt/Expresses/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Expresses"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Expresses.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Expresses.dir/build: Expresses

.PHONY : CMakeFiles/Expresses.dir/build

CMakeFiles/Expresses.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Expresses.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Expresses.dir/clean

CMakeFiles/Expresses.dir/depend:
	cd /Users/akbar/CLionProjects/RedBelt/Expresses/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/akbar/CLionProjects/RedBelt/Expresses /Users/akbar/CLionProjects/RedBelt/Expresses /Users/akbar/CLionProjects/RedBelt/Expresses/cmake-build-debug /Users/akbar/CLionProjects/RedBelt/Expresses/cmake-build-debug /Users/akbar/CLionProjects/RedBelt/Expresses/cmake-build-debug/CMakeFiles/Expresses.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Expresses.dir/depend

