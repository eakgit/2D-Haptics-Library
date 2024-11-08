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

# Utility rule file for mpfr.

# Include any custom commands dependencies for this target.
include _deps/libigl-build/CMakeFiles/mpfr.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/libigl-build/CMakeFiles/mpfr.dir/progress.make

_deps/libigl-build/CMakeFiles/mpfr: _deps/libigl-build/CMakeFiles/mpfr-complete

_deps/libigl-build/CMakeFiles/mpfr-complete: _deps/mpfr/src/mpfr-stamp/mpfr-install
_deps/libigl-build/CMakeFiles/mpfr-complete: _deps/mpfr/src/mpfr-stamp/mpfr-mkdir
_deps/libigl-build/CMakeFiles/mpfr-complete: _deps/mpfr/src/mpfr-stamp/mpfr-download
_deps/libigl-build/CMakeFiles/mpfr-complete: _deps/mpfr/src/mpfr-stamp/mpfr-patch
_deps/libigl-build/CMakeFiles/mpfr-complete: _deps/mpfr/src/mpfr-stamp/mpfr-configure
_deps/libigl-build/CMakeFiles/mpfr-complete: _deps/mpfr/src/mpfr-stamp/mpfr-build
_deps/libigl-build/CMakeFiles/mpfr-complete: _deps/mpfr/src/mpfr-stamp/mpfr-install
_deps/libigl-build/CMakeFiles/mpfr-complete: _deps/mpfr/src/mpfr-stamp/mpfr-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'mpfr'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build/CMakeFiles
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build/CMakeFiles/mpfr-complete
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-stamp/mpfr-done

_deps/mpfr/src/mpfr-stamp/mpfr-build: _deps/gmp/src/gmp-stamp/gmp-done
_deps/mpfr/src/mpfr-stamp/mpfr-build: _deps/mpfr/src/mpfr-stamp/mpfr-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'mpfr'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-build && make -j24
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-build && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-stamp/mpfr-build

_deps/mpfr/src/mpfr-stamp/mpfr-configure: _deps/mpfr/tmp/mpfr-cfgcmd.txt
_deps/mpfr/src/mpfr-stamp/mpfr-configure: _deps/mpfr/src/mpfr-stamp/mpfr-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'mpfr'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-build && /usr/bin/cmake -E env CFLAGS= LDFLAGS= /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr/configure --disable-debug --disable-dependency-tracking --disable-silent-rules --enable-cxx --with-pic --with-gmp-include=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/gmp/install/include --with-gmp-lib=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/gmp/install/lib --disable-shared --prefix=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/install --build= --host= --disable-shared
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-build && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-stamp/mpfr-configure

_deps/mpfr/src/mpfr-stamp/mpfr-download: _deps/mpfr/src/mpfr-stamp/mpfr-urlinfo.txt
_deps/mpfr/src/mpfr-stamp/mpfr-download: _deps/mpfr/src/mpfr-stamp/mpfr-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'mpfr'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src && /usr/bin/cmake -P /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-stamp/download-mpfr.cmake
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src && /usr/bin/cmake -P /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-stamp/verify-mpfr.cmake
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src && /usr/bin/cmake -P /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-stamp/extract-mpfr.cmake
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-stamp/mpfr-download

_deps/mpfr/src/mpfr-stamp/mpfr-install: _deps/mpfr/src/mpfr-stamp/mpfr-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing install step for 'mpfr'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-build && make -j24 install
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-build && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-stamp/mpfr-install

_deps/mpfr/src/mpfr-stamp/mpfr-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'mpfr'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-build
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/install
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/tmp
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-stamp
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-stamp
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-stamp/mpfr-mkdir

_deps/mpfr/src/mpfr-stamp/mpfr-patch: _deps/mpfr/src/mpfr-stamp/mpfr-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'mpfr'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/cmake -E echo_append
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-stamp/mpfr-patch

_deps/mpfr/src/mpfr-stamp/mpfr-test: _deps/mpfr/src/mpfr-stamp/mpfr-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'mpfr'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-build && /usr/bin/cmake -E echo_append
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-build && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/mpfr/src/mpfr-stamp/mpfr-test

mpfr: _deps/libigl-build/CMakeFiles/mpfr
mpfr: _deps/libigl-build/CMakeFiles/mpfr-complete
mpfr: _deps/mpfr/src/mpfr-stamp/mpfr-build
mpfr: _deps/mpfr/src/mpfr-stamp/mpfr-configure
mpfr: _deps/mpfr/src/mpfr-stamp/mpfr-download
mpfr: _deps/mpfr/src/mpfr-stamp/mpfr-install
mpfr: _deps/mpfr/src/mpfr-stamp/mpfr-mkdir
mpfr: _deps/mpfr/src/mpfr-stamp/mpfr-patch
mpfr: _deps/mpfr/src/mpfr-stamp/mpfr-test
mpfr: _deps/libigl-build/CMakeFiles/mpfr.dir/build.make
.PHONY : mpfr

# Rule to build all files generated by this target.
_deps/libigl-build/CMakeFiles/mpfr.dir/build: mpfr
.PHONY : _deps/libigl-build/CMakeFiles/mpfr.dir/build

_deps/libigl-build/CMakeFiles/mpfr.dir/clean:
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && $(CMAKE_COMMAND) -P CMakeFiles/mpfr.dir/cmake_clean.cmake
.PHONY : _deps/libigl-build/CMakeFiles/mpfr.dir/clean

_deps/libigl-build/CMakeFiles/mpfr.dir/depend:
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-src /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build/CMakeFiles/mpfr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/libigl-build/CMakeFiles/mpfr.dir/depend
