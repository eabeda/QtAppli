## CMake
cmake_minimum_required(VERSION 3.22.1)

## Configuration
message(STATUS "*** Current source directory: " ${CMAKE_CURRENT_SOURCE_DIR})
message(STATUS "*** Current build directory: " ${CMAKE_CURRENT_BINARY_DIR})

## Include PkgConfig
include(FindPkgConfig)

## Include CMake definition file
include(defs.cmake)

pkg_check_modules(QTCORE REQUIRED Qt5Core)
message(STATUS "*** QTCORE_FOUND: " ${QTCORE_FOUND})
message(STATUS "*** QTCORE_CFLAGS: " ${QTCORE_CFLAGS})
message(STATUS "*** QTCORE_LDFLAGS: " ${QTCORE_LDFLAGS})

pkg_check_modules(QTGUI REQUIRED Qt5Gui)
message(STATUS "*** QTGUI_FOUND: " ${QTGUI_FOUND})
message(STATUS "*** QTGUI_CFLAGS: " ${QTGUI_CFLAGS})
message(STATUS "*** QTGUI_LDFLAGS: " ${QTGUI_LDFLAGS})

pkg_check_modules(QTWIDGETS REQUIRED Qt5Widgets)
message(STATUS "*** QTWIDGETS_FOUND: " ${QTWIDGETS_FOUND})
message(STATUS "*** QTWIDGETS_CFLAGS: " ${QTWIDGETS_CFLAGS})
message(STATUS "*** QTWIDGETS_LDFLAGS: " ${QTWIDGETS_LDFLAGS})

add_compile_options(-fPIC ${QTCORE_CFLAGS} ${QTGUI_CFLAGS} ${QTWIDGETS_CFLAGS})

## Create library
add_executable(
        ${EXE}
        ${SRC_FILES}
        )

target_link_libraries(${EXE} ${QTCORE_LDFLAGS} ${QTGUI_LDFLAGS} ${QTWIDGETS_LDFLAGS})

## Install files
install(TARGETS ${EXE} RUNTIME DESTINATION ${INSTALL_EXE_DIR})
