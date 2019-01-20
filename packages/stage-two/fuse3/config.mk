PKGNAME := fuse
PKGVER := 3.4.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
MESONCROSS := $(PKGOBJDIR)/meson_cross.txt
PATCHLIST := $(PATCHDB)/$(PKGNAME)3/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)3
SRCURL := https://github.com/libfuse/libfuse/releases/download/fuse-3.4.1/$(PKGSRC)

COPTS := --prefix=/usr \
	--libdir=/usr/lib

HOST_AR := "ar"
HOST_CC := "gcc"
HOST_CXX := "g++"
HOST_RANLIB := "ranlib"

PKGDIR := $(PKGDB)/$(PKGNAME)3
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)3
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
