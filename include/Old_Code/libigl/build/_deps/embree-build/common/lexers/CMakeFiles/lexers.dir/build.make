# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build

# Include any dependencies generated for this target.
include _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/flags.make

_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/stringstream.cpp.o: _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/flags.make
_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/stringstream.cpp.o: _deps/embree-src/common/lexers/stringstream.cpp
_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/stringstream.cpp.o: _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/stringstream.cpp.o"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-build/common/lexers && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/stringstream.cpp.o -MF CMakeFiles/lexers.dir/stringstream.cpp.o.d -o CMakeFiles/lexers.dir/stringstream.cpp.o -c /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-src/common/lexers/stringstream.cpp

_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/stringstream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lexers.dir/stringstream.cpp.i"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-build/common/lexers && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-src/common/lexers/stringstream.cpp > CMakeFiles/lexers.dir/stringstream.cpp.i

_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/stringstream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lexers.dir/stringstream.cpp.s"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-build/common/lexers && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-src/common/lexers/stringstream.cpp -o CMakeFiles/lexers.dir/stringstream.cpp.s

_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/tokenstream.cpp.o: _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/flags.make
_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/tokenstream.cpp.o: _deps/embree-src/common/lexers/tokenstream.cpp
_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/tokenstream.cpp.o: _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/tokenstream.cpp.o"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-build/common/lexers && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/tokenstream.cpp.o -MF CMakeFiles/lexers.dir/tokenstream.cpp.o.d -o CMakeFiles/lexers.dir/tokenstream.cpp.o -c /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-src/common/lexers/tokenstream.cpp

_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/tokenstream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lexers.dir/tokenstream.cpp.i"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-build/common/lexers && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-src/common/lexers/tokenstream.cpp > CMakeFiles/lexers.dir/tokenstream.cpp.i

_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/tokenstream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lexers.dir/tokenstream.cpp.s"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-build/common/lexers && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-src/common/lexers/tokenstream.cpp -o CMakeFiles/lexers.dir/tokenstream.cpp.s

# Object files for target lexers
lexers_OBJECTS = \
"CMakeFiles/lexers.dir/stringstream.cpp.o" \
"CMakeFiles/lexers.dir/tokenstream.cpp.o"

# External object files for target lexers
lexers_EXTERNAL_OBJECTS =

_deps/embree-build/liblexers.a: _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/stringstream.cpp.o
_deps/embree-build/liblexers.a: _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/tokenstream.cpp.o
_deps/embree-build/liblexers.a: _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/build.make
_deps/embree-build/liblexers.a: _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../../liblexers.a"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-build/common/lexers && $(CMAKE_COMMAND) -P CMakeFiles/lexers.dir/cmake_clean_target.cmake
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-build/common/lexers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lexers.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/build: _deps/embree-build/liblexers.a
.PHONY : _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/build

_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/clean:
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-build/common/lexers && $(CMAKE_COMMAND) -P CMakeFiles/lexers.dir/cmake_clean.cmake
.PHONY : _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/clean

_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/depend:
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-src/common/lexers /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-build/common/lexers /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/embree-build/common/lexers/CMakeFiles/lexers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/embree-build/common/lexers/CMakeFiles/lexers.dir/depend
