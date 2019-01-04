PKGNAME := bullet3
PKGVER := 2.87
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://github.com/bulletphysics/$(PKGNAME)/archive/$(PKGVER)/$(PKGSRC)
COPTS := -D BUILD_SHARED_LIBS=ON \
	-D INSTALL_LIBS=ON \
	-D OpenGL_GL_PREFERENCE="GLVND" \
	-D CMAKE_CROSSCOMPILING=1 \
	-D CMAKE_SYSTEM_NAME=Linux \
	-D BUILD_CPU_DEMOS=OFF \
	-D BUILD_OPENGL3_DEMOS=OFF \
	-D BUILD_BULLET2_DEMOS=OFF \
	-D BUILD_UNIT_TESTS=OFF \
	-D CMAKE_BUILD_TYPE=Release \
	-D CMAKE_INSTALL_PREFIX=/usr \
	-D USE_GRAPHICAL_BENCHMARK=OFF \
	-D CMAKE_LINKER=$(CROSSTOOLS)/bin/"${LD}" \
	-D CMAKE_C_COMPILER_AR=$(CROSSTOOLS)/bin/"${AR}" \
	-D CMAKE_C_COMPILER_RANLIB=$(CROSSTOOLS)/bin/"${RANLIB}" \
	-D CMAKE_FIND_ROOT_PATH=$(SYSROOTDIR) \
	-D CMAKE_FIND_ROOT_PATH_MODE_PROGRAM=NEVER \
	-D CMAKE_FIND_ROOT_PATH_MODE_LIBRARY=ONLY \
	-D CMAKE_FIND_ROOT_PATH_MODE_INCLUDE=ONLY

ifeq ($(ARCH),arm)
	COPTS := $(COPTS) \
		-D CMAKE_SYSTEM_PROCESSOR=arm
endif

ifeq ($(ARCH),aarch64)
	COPTS := $(COPTS) \
		-D CMAKE_SYSTEM_PROCESSOR=aarch64
endif

ifeq ($(ARCH),x86_64)
        COPTS := $(COPTS) \
		-D CMAKE_SYSTEM_PROCESSOR=x86_64
endif

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/xorg/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
