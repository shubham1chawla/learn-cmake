cmake_minimum_required(VERSION 3.24.1)

# Project-level details
project(5-nested-cmake)

# Including sub-directory to add library
add_subdirectory(lib/Foo)

# Creating final executable
add_executable(${PROJECT_NAME} main.cpp)

# Linking libraries to the executable
target_link_libraries(${PROJECT_NAME} PUBLIC Foo)