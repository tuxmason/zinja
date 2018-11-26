##########################################################################
# 
# Filename: config.aarch64.inc
#
# Purpose: aarch64 cpu config
#
# Copyright (c) 2007 - 2018 Mwanguhya Daniel Murungi <tuxmason@gmail.com>
#
#########################################################################

# CPU Architecture Type
# ( read doc/cpu_arch_type.txt )
CPU_ARCH_TYPE := armv8-a

# ARM ABI 
# ( read doc/arm_abi.txt )
ABI := aapcs-linux

# CPU Endianness
# ( read doc/cpu_endianness.txt )
ENDIAN := little

# 64-bit target
BUILD64 := -m64

# ARM Mode
# ( read doc/arm_mode.txt )
ARM_MODE := arm

