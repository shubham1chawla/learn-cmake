cmake_minimum_required(VERSION 3.24.1)

# Project-level details
project(3-multi-source)

# Finding all cpp files and puts it in SRC_FILES variable
file(GLOB_RECURSE SRC_FILES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)

# Creating final executable
add_executable(${PROJECT_NAME} main.cpp ${SRC_FILES})

# Including the header file's directory
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)