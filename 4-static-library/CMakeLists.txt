cmake_minimum_required(VERSION 3.24.1)

# Project-level details
project(4-static-library)

# Including custom library
add_library(Foo STATIC lib/Foo/src/Foo.cpp)
target_include_directories(Foo PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/lib/Foo/include)

# Creating final executable
add_executable(${PROJECT_NAME} main.cpp)

# Linking libraries to the executable
target_link_libraries(${PROJECT_NAME} PUBLIC Foo)