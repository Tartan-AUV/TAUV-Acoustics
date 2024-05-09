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

# Include any dependencies generated for this target.
include libsrc/usbps/src/CMakeFiles/usbps.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsrc/usbps/src/CMakeFiles/usbps.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/usbps/src/CMakeFiles/usbps.dir/progress.make

# Include the compile flags for this target's objects.
include libsrc/usbps/src/CMakeFiles/usbps.dir/flags.make

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps.c.obj: libsrc/usbps/src/CMakeFiles/usbps.dir/flags.make
libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps.c.obj: /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps.c
libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps.c.obj: libsrc/usbps/src/CMakeFiles/usbps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps.c.obj"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps.c.obj -MF CMakeFiles/usbps.dir/xusbps.c.obj.d -o CMakeFiles/usbps.dir/xusbps.c.obj -c /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps.c

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/usbps.dir/xusbps.c.i"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps.c > CMakeFiles/usbps.dir/xusbps.c.i

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/usbps.dir/xusbps.c.s"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps.c -o CMakeFiles/usbps.dir/xusbps.c.s

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_endpoint.c.obj: libsrc/usbps/src/CMakeFiles/usbps.dir/flags.make
libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_endpoint.c.obj: /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_endpoint.c
libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_endpoint.c.obj: libsrc/usbps/src/CMakeFiles/usbps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_endpoint.c.obj"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_endpoint.c.obj -MF CMakeFiles/usbps.dir/xusbps_endpoint.c.obj.d -o CMakeFiles/usbps.dir/xusbps_endpoint.c.obj -c /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_endpoint.c

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_endpoint.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/usbps.dir/xusbps_endpoint.c.i"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_endpoint.c > CMakeFiles/usbps.dir/xusbps_endpoint.c.i

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_endpoint.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/usbps.dir/xusbps_endpoint.c.s"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_endpoint.c -o CMakeFiles/usbps.dir/xusbps_endpoint.c.s

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_g.c.obj: libsrc/usbps/src/CMakeFiles/usbps.dir/flags.make
libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_g.c.obj: /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_g.c
libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_g.c.obj: libsrc/usbps/src/CMakeFiles/usbps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_g.c.obj"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_g.c.obj -MF CMakeFiles/usbps.dir/xusbps_g.c.obj.d -o CMakeFiles/usbps.dir/xusbps_g.c.obj -c /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_g.c

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_g.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/usbps.dir/xusbps_g.c.i"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_g.c > CMakeFiles/usbps.dir/xusbps_g.c.i

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_g.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/usbps.dir/xusbps_g.c.s"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_g.c -o CMakeFiles/usbps.dir/xusbps_g.c.s

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_hw.c.obj: libsrc/usbps/src/CMakeFiles/usbps.dir/flags.make
libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_hw.c.obj: /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_hw.c
libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_hw.c.obj: libsrc/usbps/src/CMakeFiles/usbps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_hw.c.obj"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_hw.c.obj -MF CMakeFiles/usbps.dir/xusbps_hw.c.obj.d -o CMakeFiles/usbps.dir/xusbps_hw.c.obj -c /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_hw.c

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_hw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/usbps.dir/xusbps_hw.c.i"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_hw.c > CMakeFiles/usbps.dir/xusbps_hw.c.i

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_hw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/usbps.dir/xusbps_hw.c.s"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_hw.c -o CMakeFiles/usbps.dir/xusbps_hw.c.s

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_intr.c.obj: libsrc/usbps/src/CMakeFiles/usbps.dir/flags.make
libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_intr.c.obj: /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_intr.c
libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_intr.c.obj: libsrc/usbps/src/CMakeFiles/usbps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_intr.c.obj"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_intr.c.obj -MF CMakeFiles/usbps.dir/xusbps_intr.c.obj.d -o CMakeFiles/usbps.dir/xusbps_intr.c.obj -c /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_intr.c

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_intr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/usbps.dir/xusbps_intr.c.i"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_intr.c > CMakeFiles/usbps.dir/xusbps_intr.c.i

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_intr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/usbps.dir/xusbps_intr.c.s"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_intr.c -o CMakeFiles/usbps.dir/xusbps_intr.c.s

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_sinit.c.obj: libsrc/usbps/src/CMakeFiles/usbps.dir/flags.make
libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_sinit.c.obj: /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_sinit.c
libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_sinit.c.obj: libsrc/usbps/src/CMakeFiles/usbps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_sinit.c.obj"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_sinit.c.obj -MF CMakeFiles/usbps.dir/xusbps_sinit.c.obj.d -o CMakeFiles/usbps.dir/xusbps_sinit.c.obj -c /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_sinit.c

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_sinit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/usbps.dir/xusbps_sinit.c.i"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_sinit.c > CMakeFiles/usbps.dir/xusbps_sinit.c.i

libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_sinit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/usbps.dir/xusbps_sinit.c.s"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && /home/tartanauv/Xilinx/Vitis/2023.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src/xusbps_sinit.c -o CMakeFiles/usbps.dir/xusbps_sinit.c.s

# Object files for target usbps
usbps_OBJECTS = \
"CMakeFiles/usbps.dir/xusbps.c.obj" \
"CMakeFiles/usbps.dir/xusbps_endpoint.c.obj" \
"CMakeFiles/usbps.dir/xusbps_g.c.obj" \
"CMakeFiles/usbps.dir/xusbps_hw.c.obj" \
"CMakeFiles/usbps.dir/xusbps_intr.c.obj" \
"CMakeFiles/usbps.dir/xusbps_sinit.c.obj"

# External object files for target usbps
usbps_EXTERNAL_OBJECTS =

libsrc/usbps/src/libusbps.a: libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps.c.obj
libsrc/usbps/src/libusbps.a: libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_endpoint.c.obj
libsrc/usbps/src/libusbps.a: libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_g.c.obj
libsrc/usbps/src/libusbps.a: libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_hw.c.obj
libsrc/usbps/src/libusbps.a: libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_intr.c.obj
libsrc/usbps/src/libusbps.a: libsrc/usbps/src/CMakeFiles/usbps.dir/xusbps_sinit.c.obj
libsrc/usbps/src/libusbps.a: libsrc/usbps/src/CMakeFiles/usbps.dir/build.make
libsrc/usbps/src/libusbps.a: libsrc/usbps/src/CMakeFiles/usbps.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C static library libusbps.a"
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && $(CMAKE_COMMAND) -P CMakeFiles/usbps.dir/cmake_clean_target.cmake
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/usbps.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsrc/usbps/src/CMakeFiles/usbps.dir/build: libsrc/usbps/src/libusbps.a
.PHONY : libsrc/usbps/src/CMakeFiles/usbps.dir/build

libsrc/usbps/src/CMakeFiles/usbps.dir/clean:
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src && $(CMAKE_COMMAND) -P CMakeFiles/usbps.dir/cmake_clean.cmake
.PHONY : libsrc/usbps/src/CMakeFiles/usbps.dir/clean

libsrc/usbps/src/CMakeFiles/usbps.dir/depend:
	cd /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/usbps/src /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src /home/tartanauv/TAUV-Acoustics/hdl/projects/som_platform/ps7_cortexa9_0/standalone_ps7_cortexa9_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbps/src/CMakeFiles/usbps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/usbps/src/CMakeFiles/usbps.dir/depend

