PKGNAME := libsoup
PKGVER := 2.64.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
MESONCROSS := $(PKGOBJDIR)/meson_cross.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnome.org/pub/gnome/sources/$(PKGNAME)/2.64/$(PKGSRC)
COPTS := --prefix=/usr \
	--libdir=/usr/lib \
	--sysconfdir=/etc \
	--buildtype=release \
	--localstatedir=/var \
	-D 'vapi=false' -D 'gssapi=false'

HOST_AR := "ar"
HOST_CC := "gcc"
HOST_CXX := "g++"
HOST_RANLIB := "ranlib"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
