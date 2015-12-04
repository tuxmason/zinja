PKGNAME := openjpeg
PKGVER := 2.1.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)2-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)2/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)2
CMAKEOPTS := -DCMAKE_INSTALL_PREFIX=/usr \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_VERBOSE_MAKEFILE=ON \
	-DCMAKE_TOOLCHAIN_FILE=$(PATCHDB)/shared/env.cmake

CC := "${CC} "
CXX := "${CXX} "