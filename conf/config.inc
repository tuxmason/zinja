##########################################################################
# 
# Filename: config.inc
#
# Purpose: x86_64 core config
#
# Copyright (c) 2007 - 2017 Mwanguhya Daniel Murungi <tuxmason@gmail.com>
#
#########################################################################

# CPU Architecture 
# (read doc/cpu_arch.txt)
ARCH := x86_64

# Target Processor family
# ( read doc/target_processor.txt )
PROC := x86_64

# Target Vendor
VENDOR :=

# 64-bit target
BUILD64 := -m64

# Toolchain Version
REVISION :=

# Use all available CPU cores during build process
MULTICORE := auto
