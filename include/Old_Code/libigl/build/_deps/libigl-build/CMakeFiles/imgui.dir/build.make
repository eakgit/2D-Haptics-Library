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
include _deps/libigl-build/CMakeFiles/imgui.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/libigl-build/CMakeFiles/imgui.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/libigl-build/CMakeFiles/imgui.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/libigl-build/CMakeFiles/imgui.dir/flags.make

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/flags.make
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.o: _deps/imgui-src/imgui.cpp
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.o"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.o -MF CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.o.d -o CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.o -c /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui.cpp

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.i"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui.cpp > CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.i

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.s"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui.cpp -o CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.s

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/flags.make
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.o: _deps/imgui-src/imgui_demo.cpp
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.o"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.o -MF CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.o.d -o CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.o -c /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui_demo.cpp

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.i"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui_demo.cpp > CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.i

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.s"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui_demo.cpp -o CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.s

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/flags.make
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.o: _deps/imgui-src/imgui_draw.cpp
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.o"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.o -MF CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.o.d -o CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.o -c /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui_draw.cpp

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.i"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui_draw.cpp > CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.i

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.s"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui_draw.cpp -o CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.s

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/flags.make
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.o: _deps/imgui-src/imgui_widgets.cpp
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.o"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.o -MF CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.o.d -o CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.o -c /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui_widgets.cpp

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.i"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui_widgets.cpp > CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.i

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.s"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui_widgets.cpp -o CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.s

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/flags.make
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.o: _deps/imgui-src/imgui_tables.cpp
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.o"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.o -MF CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.o.d -o CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.o -c /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui_tables.cpp

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.i"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui_tables.cpp > CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.i

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.s"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/imgui_tables.cpp -o CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.s

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/flags.make
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.o: _deps/imgui-src/backends/imgui_impl_opengl3.cpp
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.o"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.o -MF CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.o -c /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/backends/imgui_impl_opengl3.cpp

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.i"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/backends/imgui_impl_opengl3.cpp > CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.i

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.s"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/backends/imgui_impl_opengl3.cpp -o CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.s

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/flags.make
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.o: _deps/imgui-src/backends/imgui_impl_glfw.cpp
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.o"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.o -MF CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.o.d -o CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.o -c /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/backends/imgui_impl_glfw.cpp

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.i"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/backends/imgui_impl_glfw.cpp > CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.i

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.s"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/backends/imgui_impl_glfw.cpp -o CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.s

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/flags.make
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.o: _deps/imgui-src/misc/cpp/imgui_stdlib.cpp
_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.o: _deps/libigl-build/CMakeFiles/imgui.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.o"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.o -MF CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.o.d -o CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.o -c /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/misc/cpp/imgui_stdlib.cpp

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.i"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/misc/cpp/imgui_stdlib.cpp > CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.i

_deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.s"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/imgui-src/misc/cpp/imgui_stdlib.cpp -o CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.s

# Object files for target imgui
imgui_OBJECTS = \
"CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.o" \
"CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.o" \
"CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.o" \
"CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.o" \
"CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.o" \
"CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.o" \
"CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.o" \
"CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.o"

# External object files for target imgui
imgui_EXTERNAL_OBJECTS =

lib/libimgui.so: _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui.cpp.o
lib/libimgui.so: _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_demo.cpp.o
lib/libimgui.so: _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_draw.cpp.o
lib/libimgui.so: _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_widgets.cpp.o
lib/libimgui.so: _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/imgui_tables.cpp.o
lib/libimgui.so: _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_opengl3.cpp.o
lib/libimgui.so: _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/backends/imgui_impl_glfw.cpp.o
lib/libimgui.so: _deps/libigl-build/CMakeFiles/imgui.dir/__/imgui-src/misc/cpp/imgui_stdlib.cpp.o
lib/libimgui.so: _deps/libigl-build/CMakeFiles/imgui.dir/build.make
lib/libimgui.so: lib/libglfw.so.3.4
lib/libimgui.so: lib/libglad.so
lib/libimgui.so: _deps/libigl-build/CMakeFiles/imgui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX shared library ../../lib/libimgui.so"
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imgui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/libigl-build/CMakeFiles/imgui.dir/build: lib/libimgui.so
.PHONY : _deps/libigl-build/CMakeFiles/imgui.dir/build

_deps/libigl-build/CMakeFiles/imgui.dir/clean:
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build && $(CMAKE_COMMAND) -P CMakeFiles/imgui.dir/cmake_clean.cmake
.PHONY : _deps/libigl-build/CMakeFiles/imgui.dir/clean

_deps/libigl-build/CMakeFiles/imgui.dir/depend:
	cd /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-src /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build /home/kalu/Documents/Files/Engineering/Research/SBRM/Franka_Sigma_Codebase/libigl/build/_deps/libigl-build/CMakeFiles/imgui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/libigl-build/CMakeFiles/imgui.dir/depend

