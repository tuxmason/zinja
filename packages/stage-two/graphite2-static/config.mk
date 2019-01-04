PKGNAME := graphite2
PKGVER := 1.3.10
PKGSRC := $(PKGNAME)-$(PKGVER).tgz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-static-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list-static.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://github.com/silnrsi/graphite/releases/download/$(PKGVER)/$(PKGSRC)
COPTS := -D CMAKE_CROSSCOMPILING=1 \
	-D CMAKE_SYSTEM_NAME=Linux \
	-D GRAPHITE2_NFILEFACE=ON \
	-D GRAPHITE2_NSEGCACHE=ON \
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

PKGDIR := $(PKGDB)/$(PKGNAME)-static
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)-static
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
