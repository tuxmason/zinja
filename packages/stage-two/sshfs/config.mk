PKGNAME := sshfs
PKGVER := 3.5.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
MESONCROSS := $(PKGOBJDIR)/meson_cross.txt
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://github.com/libfuse/sshfs/releases/download/$(PKGNAME)-$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--buildtype=release \
	--localstatedir=/var

HOST_AR := "ar"
HOST_CC := "gcc"
HOST_CXX := "g++"
HOST_RANLIB := "ranlib"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
