project(OnlineForrest)
cmake_minimum_required(VERSION 2.8)

SET(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

SET(CMAKE_VERBOSE_MAKEFILE 1)
SET(CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -Wall")
SET(CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -std=c++0x")
SET(CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -fopenmp")
SET(CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -Wno-deprecated-declarations")
SET(CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -Wno-unknown-pragmas")
SET(CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -fstack-protector-all")
SET(CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -fPIC")
SET(CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS} -march=native -mtune=native -DNDEBUG")

# sudo apt-get install libconfig++8-dev libblas-dev libatlas-base-dev liblapack-dev libgmm++-dev

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

add_subdirectory(src)
