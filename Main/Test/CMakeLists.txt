## CMake
cmake_minimum_required(VERSION 3.22.1)

## Project declaration
project(Test)

## Configurations
message(STATUS "*** Project: " ${CMAKE_PROJECT_NAME})
message(STATUS "*** Source directory: " ${CMAKE_SOURCE_DIR})
message(STATUS "*** Build directory: " ${CMAKE_BINARY_DIR})
message(STATUS "*** Prefix: " ${CMAKE_INSTALL_PREFIX})
message(STATUS "*** Build Type: " ${CMAKE_BUILD_TYPE})

## Include PkgConfig
include(FindPkgConfig)

## Include CMake definition file
include(defs.cmake)

## Set C++17 version
set(CMAKE_CXX_STANDARD ${CXXVERSION})

## Add directories
add_subdirectory(test)