zinja
=====

Zinja is a set of Makefiles and patches designed to automate the process of 
building a custom Linux distribution. 

Zinja generates a cross toolchain which is used to build tools for the target 
filesystem. Zinja uses modified build rules and base patches from the CLFS 
project. Also incorporated are some patches from various projects, namely, 
Alpine, Gentoo and Openwrt.

Features
--------
- uClibc cross toolchain 
- root filesystem and kernel compilation
- support for ARM and Intel architectures

Host System requirements
------------------------
- Bash >= 3.2 
  (/bin/sh should be a symbolic or hard link to bash)
- Binutils >= 2.17
- Bison >= 2.3 
  (/usr/bin/yacc should be a link to bison or small script that executes bison)
- Bzip2 >= 1.0.4
- Coreutils >= 6.9
- Diffutils >= 2.8.1
- Findutils >= 4.2.31
- Gawk >= 4.0.1 
  (/usr/bin/awk should be a link to gawk)
- GCC -> 4.1.2 including the C++ compiler, g++.
- Glibc >= 2.5.1
- Grep >= 2.5.1a
- Gzip >= 1.3.12
- Linux Kernel >= 2.6.32
- M4 >= 1.4.10
- Make >= 3.81
- Patch >= 2.5.4
- Perl >= 5.8.8
- Sed >= 4.1.5
- Tar >= 1.18
- Texinfo >= 4.9
- Xz >= 5.0.0


