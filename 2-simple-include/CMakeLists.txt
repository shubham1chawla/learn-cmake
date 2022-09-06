cmake_minimum_required(VERSION 3.24.1)

# Project-level details
project(2-simple-include)

# Creating final executable
add_executable(${PROJECT_NAME} main.cpp)

# Including the header file's directory
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)