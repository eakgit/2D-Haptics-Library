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
CMAKE_SOURCE_DIR = /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild

# Utility rule file for predicates-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/predicates-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/predicates-populate.dir/progress.make

CMakeFiles/predicates-populate: CMakeFiles/predicates-populate-complete

CMakeFiles/predicates-populate-complete: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-install
CMakeFiles/predicates-populate-complete: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-mkdir
CMakeFiles/predicates-populate-complete: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-download
CMakeFiles/predicates-populate-complete: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-update
CMakeFiles/predicates-populate-complete: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-patch
CMakeFiles/predicates-populate-complete: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-configure
CMakeFiles/predicates-populate-complete: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-build
CMakeFiles/predicates-populate-complete: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-install
CMakeFiles/predicates-populate-complete: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'predicates-populate'"
	/usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/CMakeFiles
	/usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/CMakeFiles/predicates-populate-complete
	/usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-done

predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-update:
.PHONY : predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-update

predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-build: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'predicates-populate'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-build && /usr/bin/cmake -E echo_append
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-build && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-build

predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-configure: predicates-populate-prefix/tmp/predicates-populate-cfgcmd.txt
predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-configure: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'predicates-populate'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-build && /usr/bin/cmake -E echo_append
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-build && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-configure

predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-download: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-gitinfo.txt
predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-download: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'predicates-populate'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps && /usr/bin/cmake -P /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/tmp/predicates-populate-gitclone.cmake
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-download

predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-install: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'predicates-populate'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-build && /usr/bin/cmake -E echo_append
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-build && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-install

predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'predicates-populate'"
	/usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-src
	/usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-build
	/usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix
	/usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/tmp
	/usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/src/predicates-populate-stamp
	/usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/src
	/usr/bin/cmake -E make_directory /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/src/predicates-populate-stamp
	/usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-mkdir

predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-patch: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'predicates-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-patch

predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-update:
.PHONY : predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-update

predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-test: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'predicates-populate'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-build && /usr/bin/cmake -E echo_append
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-build && /usr/bin/cmake -E touch /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-test

predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-update: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing update step for 'predicates-populate'"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-src && /usr/bin/cmake -P /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/predicates-populate-prefix/tmp/predicates-populate-gitupdate.cmake

predicates-populate: CMakeFiles/predicates-populate
predicates-populate: CMakeFiles/predicates-populate-complete
predicates-populate: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-build
predicates-populate: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-configure
predicates-populate: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-download
predicates-populate: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-install
predicates-populate: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-mkdir
predicates-populate: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-patch
predicates-populate: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-test
predicates-populate: predicates-populate-prefix/src/predicates-populate-stamp/predicates-populate-update
predicates-populate: CMakeFiles/predicates-populate.dir/build.make
.PHONY : predicates-populate

# Rule to build all files generated by this target.
CMakeFiles/predicates-populate.dir/build: predicates-populate
.PHONY : CMakeFiles/predicates-populate.dir/build

CMakeFiles/predicates-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/predicates-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/predicates-populate.dir/clean

CMakeFiles/predicates-populate.dir/depend:
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/predicates-subbuild/CMakeFiles/predicates-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/predicates-populate.dir/depend

