cmake_minimum_required(VERSION 3.21)

project(cmake-with-nasm)

# 设置C++标准
set(CMAKE_CXX_STANDARD 17)
# 启用NASM提供的ASM支持
enable_language(ASM_NASM)

if(APPLE)
    # 当构建macho64对象文件时，添加前置下划线
    string(APPEND CMAKE_ASM_NASM_FLAGS "--prefix _")
endif()

#If the goal is to interact with C++ code and assembly code, calling convention
#changes between platform, some adjustment on the assembly code is required.

#The following will pre-define a NASM macro "WIN32". This permit to conditionally assemble
#code in the following manner :
#  %ifdef WIN32
#     ;code for Windows ABI
#  %else
#     ;code for System V AMD64 ABI
#  %endif
if(WIN32)
    string(APPEND CMAKE_ASM_NASM_FLAGS "-dWIN32=1")
endif()

add_executable(cmake-with-nasm src/cpp.cpp src/asm.asm src/library.asm src/library.hpp)