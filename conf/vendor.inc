##########################################################################
# 
# Filename: vendor.inc
#
# Purpose: Vendor Profile
#
# Copyright (c) 2007 - 2018 Mwanguhya Daniel Murungi <tuxmason@gmail.com>
#
#########################################################################

VENDOR := zinja 

# Maintainer full name
FULLNAME := "Zinja Developers"

# Maintainer email address
EMAIL := "zinja-devel@zinjaos.org"

#Distro code name
CODENAME := mugenjin

#Distro label
LABEL := "Unlimited Blade"

DESCRIPTION := "Zinja package repository"

ORIGIN := apt.zinjaos.org

# CPU Architecture
# (read doc/cpu_arch.txt)
# supported: arm aarch64 x86_64
ARCH := aarch64

# Use all available CPU cores during build process
MULTICORE := auto

#Dpkg stuff
DEBEMAIL := $(EMAIL)

DEBFULLNAME := $(FULLNAME)

