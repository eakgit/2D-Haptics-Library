cmake_minimum_required(VERSION 3.11) # FetchContent is available in 3.11+
project(Circle_Haptics)

# Generate compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(PHYSAC_HEADER /usr/local/include/physac.h)

# Dependencies
set(RAYLIB_VERSION 5.5)
find_package(raylib ${RAYLIB_VERSION} REQUIRED) # QUIET or REQUIRED
set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

# Our Project
file( GLOB APP_SOURCES *.cc )
foreach( testsourcefile ${APP_SOURCES} )
    # Cut off the file extension and directory path
    get_filename_component( testname ${testsourcefile} NAME_WE )
    add_executable( ${testname} ${testsourcefile} ${PHYSAC_HEADER})
    # Make sure YourLib is linked to each app
    set(raylib_VERBOSE 1)
    target_link_libraries( ${testname} raylib Threads::Threads m)
endforeach( testsourcefile ${APP_SOURCES} )
