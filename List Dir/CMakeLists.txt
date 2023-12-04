cmake_minimum_required(VERSION 3.0)

project(listdir)

set(CMAKE_CXX_STANDARD 17)

add_executable(listdir listdir.cpp)

target_include_directories(listdir PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
