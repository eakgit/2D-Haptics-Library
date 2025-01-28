cmake_minimum_required(VERSION 3.11) # FetchContent is available in 3.11+
project(Circle_Haptics)

# Generate compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)
add_definitions(-w)

# Dependencies
set(RAYLIB_VERSION 5.5)
find_package(raylib ${RAYLIB_VERSION} REQUIRED) # QUIET or REQUIRED
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)
find_package(Eigen3 REQUIRED)

# Our Project
file( GLOB APP_SOURCES *.cc )
foreach( testsourcefile ${APP_SOURCES} )
    # Cut off the file extension and directory path
    get_filename_component( testname ${testsourcefile} NAME_WE )
    add_executable( ${testname} ${testsourcefile})
    # Make sure YourLib is linked to each app
    set(raylib_VERBOSE 1)
    target_link_libraries( ${testname} raylib Threads::Threads Eigen3::Eigen m)
endforeach( testsourcefile ${APP_SOURCES} )
