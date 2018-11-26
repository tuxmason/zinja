##########################################################################
# 
# Filename: config.arm.inc
#
# Purpose: arm cpu config
#
# Copyright (c) 2007 - 2018 Mwanguhya Daniel Murungi <tuxmason@gmail.com>
#
#########################################################################

# CPU Architecture 
# (read doc/cpu_arch.txt)
ARCH := arm

# CPU Architecture Type
# ( read doc/cpu_arch_type.txt )
CPU_ARCH_TYPE := armv7-a

# ARM ABI 
# ( read doc/arm_abi.txt )
ABI := aapcs-linux

# CPU Endianness
# ( read doc/cpu_endianness.txt )
ENDIAN := little

# ARM Mode
# ( read doc/arm_mode.txt )
ARM_MODE := arm

# Floating Point Support
# ( read doc/float_support.txt )
FLOAT := hard

# Floating Point Hardware
# ( read doc/float_support.txt )
FPU := vfpv3-d16
