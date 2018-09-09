PKGNAME := fribidi
PKGVER := 1.0.5
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
MESON_CROSS := $(PKGOBJDIR)/meson_cross.txt
SRCURL := https://github.com/$(PKGNAME)/$(PKGNAME)/archive/$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--buildtype=release \
	-D 'docs=true'

BUILD_AR := "ar"
BUILD_CC := "gcc"
BUILD_CXX := "g++"
BUILD_RANLIB := "ranlib"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
