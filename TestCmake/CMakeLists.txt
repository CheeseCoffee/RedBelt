cmake_minimum_required(VERSION 3.18)
project(TestCmake)

set(CMAKE_CXX_STANDARD 17)

add_library(mymath_library STATIC mymath.cpp)
add_executable(TestCmake main.cpp)
target_link_libraries(TestCmake mymath_library)