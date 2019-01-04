PKGNAME := glib-networking
PKGVER := 2.55.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
MESONCROSS := $(PKGOBJDIR)/meson_cross.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnome.org/pub/gnome/sources/$(PKGNAME)/2.55/$(PKGSRC)
COPTS := --prefix=/usr \
	--libdir=/usr/lib \
	--sysconfdir=/etc \
	--buildtype=release \
	--localstatedir=/var \
	-D 'pkcs11_support=true' \
	-D 'libproxy_support=false' \
	-D 'tls_support=false'

HOST_AR := "ar"
HOST_CC := "gcc"
HOST_CXX := "g++"
HOST_RANLIB := "ranlib"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
