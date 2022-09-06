# Information regarding the library can be extracted from the parent CMakeLists file
add_library(Foo STATIC ${CMAKE_CURRENT_SOURCE_DIR}/src/Foo.cpp)
target_include_directories(Foo PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)