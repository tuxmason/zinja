PKGNAME := libcuefile
PKGVER := 475
PKGSRC := $(PKGNAME)_r$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)_r$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-r$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://files.musepack.net/source/$(PKGSRC)
COPTS := -D BUILD_SHARED_LIBS=ON \
	-D CMAKE_CROSSCOMPILING=1 \
	-D CMAKE_SYSTEM_NAME=Linux \
	-D CMAKE_BUILD_TYPE=Release \
	-D CMAKE_INSTALL_PREFIX=/usr \
	-D CMAKE_LINKER=$(CROSSTOOLS)/bin/"${LD}" \
	-D CMAKE_C_COMPILER_AR=$(CROSSTOOLS)/bin/"${AR}" \
	-D CMAKE_C_COMPILER_RANLIB=$(CROSSTOOLS)/bin/"${RANLIB}"

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

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
