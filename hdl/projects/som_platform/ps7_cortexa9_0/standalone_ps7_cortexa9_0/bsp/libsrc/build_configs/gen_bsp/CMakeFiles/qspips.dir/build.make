# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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

# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/tartanauv/Xilinx/Vitis/2023.2/tps/lnx64/cmake-3.24.2/bin/cmake

# The command to remove a file.
RM = /home/tartanauv/Xilinx/Vitis/2023.2/tps/lnx64/cmake-3.24.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp

# Utility rule file for qspips.

# Include any custom commands dependencies for this target.
include CMakeFiles/qspips.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/qspips.dir/progress.make

CMakeFiles/qspips:
	lopper -O /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/qspips/src /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/hw_artifacts/ps7_cortexa9_0_baremetal.dts -- baremetalconfig_xlnx ps7_cortexa9_0 /home/tartanauv/Xilinx/Vitis/2023.2/data/embeddedsw/XilinxProcessorIPLib/drivers/qspips_v3_11/src

qspips: CMakeFiles/qspips
qspips: CMakeFiles/qspips.dir/build.make
.PHONY : qspips

# Rule to build all files generated by this target.
CMakeFiles/qspips.dir/build: qspips
.PHONY : CMakeFiles/qspips.dir/build

CMakeFiles/qspips.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/qspips.dir/cmake_clean.cmake
.PHONY : CMakeFiles/qspips.dir/clean

CMakeFiles/qspips.dir/depend:
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles/qspips.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/qspips.dir/depend

