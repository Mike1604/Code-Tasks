cmake_minimum_required(VERSION 3.0)

project(findroots)

set(CMAKE_CXX_STANDARD 17)

add_executable(findroots findroots.cpp)

target_include_directories(findroots PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
