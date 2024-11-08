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
include _deps/libigl-build/CMakeFiles/igl_spectra.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/libigl-build/CMakeFiles/igl_spectra.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/libigl-build/CMakeFiles/igl_spectra.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/libigl-build/CMakeFiles/igl_spectra.dir/flags.make

_deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.o: _deps/libigl-build/CMakeFiles/igl_spectra.dir/flags.make
_deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.o: _deps/libigl-src/include/igl/spectra/eigs.cpp
_deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.o: _deps/libigl-build/CMakeFiles/igl_spectra.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.o"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.o -MF CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.o.d -o CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.o -c /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-src/include/igl/spectra/eigs.cpp

_deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.i"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-src/include/igl/spectra/eigs.cpp > CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.i

_deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.s"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-src/include/igl/spectra/eigs.cpp -o CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.s

_deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.o: _deps/libigl-build/CMakeFiles/igl_spectra.dir/flags.make
_deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.o: _deps/libigl-src/include/igl/spectra/lscm.cpp
_deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.o: _deps/libigl-build/CMakeFiles/igl_spectra.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object _deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.o"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.o -MF CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.o.d -o CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.o -c /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-src/include/igl/spectra/lscm.cpp

_deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.i"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-src/include/igl/spectra/lscm.cpp > CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.i

_deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.s"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-src/include/igl/spectra/lscm.cpp -o CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.s

# Object files for target igl_spectra
igl_spectra_OBJECTS = \
"CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.o" \
"CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.o"

# External object files for target igl_spectra
igl_spectra_EXTERNAL_OBJECTS =

lib/libigl_spectra.a: _deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/eigs.cpp.o
lib/libigl_spectra.a: _deps/libigl-build/CMakeFiles/igl_spectra.dir/include/igl/spectra/lscm.cpp.o
lib/libigl_spectra.a: _deps/libigl-build/CMakeFiles/igl_spectra.dir/build.make
lib/libigl_spectra.a: _deps/libigl-build/CMakeFiles/igl_spectra.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../../lib/libigl_spectra.a"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && $(CMAKE_COMMAND) -P CMakeFiles/igl_spectra.dir/cmake_clean_target.cmake
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/igl_spectra.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/libigl-build/CMakeFiles/igl_spectra.dir/build: lib/libigl_spectra.a
.PHONY : _deps/libigl-build/CMakeFiles/igl_spectra.dir/build

_deps/libigl-build/CMakeFiles/igl_spectra.dir/clean:
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && $(CMAKE_COMMAND) -P CMakeFiles/igl_spectra.dir/cmake_clean.cmake
.PHONY : _deps/libigl-build/CMakeFiles/igl_spectra.dir/clean

_deps/libigl-build/CMakeFiles/igl_spectra.dir/depend:
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-src /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build/CMakeFiles/igl_spectra.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/libigl-build/CMakeFiles/igl_spectra.dir/depend

