# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\abrah\OneDrive\Documentos\GitHub\Code-Tasks\Find Roots"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\abrah\OneDrive\Documentos\GitHub\Code-Tasks\Find Roots\build"

# Include any dependencies generated for this target.
include CMakeFiles/findroots.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/findroots.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/findroots.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/findroots.dir/flags.make

CMakeFiles/findroots.dir/findroots.cpp.obj: CMakeFiles/findroots.dir/flags.make
CMakeFiles/findroots.dir/findroots.cpp.obj: CMakeFiles/findroots.dir/includes_CXX.rsp
CMakeFiles/findroots.dir/findroots.cpp.obj: C:/Users/abrah/OneDrive/Documentos/GitHub/Code-Tasks/Find\ Roots/findroots.cpp
CMakeFiles/findroots.dir/findroots.cpp.obj: CMakeFiles/findroots.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\abrah\OneDrive\Documentos\GitHub\Code-Tasks\Find Roots\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/findroots.dir/findroots.cpp.obj"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/findroots.dir/findroots.cpp.obj -MF CMakeFiles\findroots.dir\findroots.cpp.obj.d -o CMakeFiles\findroots.dir\findroots.cpp.obj -c "C:\Users\abrah\OneDrive\Documentos\GitHub\Code-Tasks\Find Roots\findroots.cpp"

CMakeFiles/findroots.dir/findroots.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/findroots.dir/findroots.cpp.i"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\abrah\OneDrive\Documentos\GitHub\Code-Tasks\Find Roots\findroots.cpp" > CMakeFiles\findroots.dir\findroots.cpp.i

CMakeFiles/findroots.dir/findroots.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/findroots.dir/findroots.cpp.s"
	C:\msys64\ucrt64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\abrah\OneDrive\Documentos\GitHub\Code-Tasks\Find Roots\findroots.cpp" -o CMakeFiles\findroots.dir\findroots.cpp.s

# Object files for target findroots
findroots_OBJECTS = \
"CMakeFiles/findroots.dir/findroots.cpp.obj"

# External object files for target findroots
findroots_EXTERNAL_OBJECTS =

findroots.exe: CMakeFiles/findroots.dir/findroots.cpp.obj
findroots.exe: CMakeFiles/findroots.dir/build.make
findroots.exe: CMakeFiles/findroots.dir/linkLibs.rsp
findroots.exe: CMakeFiles/findroots.dir/objects1.rsp
findroots.exe: CMakeFiles/findroots.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="C:\Users\abrah\OneDrive\Documentos\GitHub\Code-Tasks\Find Roots\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable findroots.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\findroots.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/findroots.dir/build: findroots.exe
.PHONY : CMakeFiles/findroots.dir/build

CMakeFiles/findroots.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\findroots.dir\cmake_clean.cmake
.PHONY : CMakeFiles/findroots.dir/clean

CMakeFiles/findroots.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\abrah\OneDrive\Documentos\GitHub\Code-Tasks\Find Roots" "C:\Users\abrah\OneDrive\Documentos\GitHub\Code-Tasks\Find Roots" "C:\Users\abrah\OneDrive\Documentos\GitHub\Code-Tasks\Find Roots\build" "C:\Users\abrah\OneDrive\Documentos\GitHub\Code-Tasks\Find Roots\build" "C:\Users\abrah\OneDrive\Documentos\GitHub\Code-Tasks\Find Roots\build\CMakeFiles\findroots.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/findroots.dir/depend
