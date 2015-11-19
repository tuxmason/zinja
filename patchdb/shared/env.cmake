#name of the target system
SET(CMAKE_SYSTEM_NAME Linux)

# target environment 
SET(CMAKE_FIND_ROOT_PATH  /home/devel/uclibc-dev/sysroot)

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
