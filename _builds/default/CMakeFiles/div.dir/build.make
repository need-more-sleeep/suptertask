# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nikola/nk-ymnik/workspace/projects/suptertask

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nikola/nk-ymnik/workspace/projects/suptertask/_builds/default

# Include any dependencies generated for this target.
include CMakeFiles/div.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/div.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/div.dir/flags.make

CMakeFiles/div.dir/sources/div.cpp.o: CMakeFiles/div.dir/flags.make
CMakeFiles/div.dir/sources/div.cpp.o: ../../sources/div.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikola/nk-ymnik/workspace/projects/suptertask/_builds/default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/div.dir/sources/div.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/div.dir/sources/div.cpp.o -c /home/nikola/nk-ymnik/workspace/projects/suptertask/sources/div.cpp

CMakeFiles/div.dir/sources/div.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/div.dir/sources/div.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikola/nk-ymnik/workspace/projects/suptertask/sources/div.cpp > CMakeFiles/div.dir/sources/div.cpp.i

CMakeFiles/div.dir/sources/div.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/div.dir/sources/div.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikola/nk-ymnik/workspace/projects/suptertask/sources/div.cpp -o CMakeFiles/div.dir/sources/div.cpp.s

# Object files for target div
div_OBJECTS = \
"CMakeFiles/div.dir/sources/div.cpp.o"

# External object files for target div
div_EXTERNAL_OBJECTS =

libdiv.a: CMakeFiles/div.dir/sources/div.cpp.o
libdiv.a: CMakeFiles/div.dir/build.make
libdiv.a: CMakeFiles/div.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nikola/nk-ymnik/workspace/projects/suptertask/_builds/default/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdiv.a"
	$(CMAKE_COMMAND) -P CMakeFiles/div.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/div.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/div.dir/build: libdiv.a

.PHONY : CMakeFiles/div.dir/build

CMakeFiles/div.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/div.dir/cmake_clean.cmake
.PHONY : CMakeFiles/div.dir/clean

CMakeFiles/div.dir/depend:
	cd /home/nikola/nk-ymnik/workspace/projects/suptertask/_builds/default && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nikola/nk-ymnik/workspace/projects/suptertask /home/nikola/nk-ymnik/workspace/projects/suptertask /home/nikola/nk-ymnik/workspace/projects/suptertask/_builds/default /home/nikola/nk-ymnik/workspace/projects/suptertask/_builds/default /home/nikola/nk-ymnik/workspace/projects/suptertask/_builds/default/CMakeFiles/div.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/div.dir/depend
