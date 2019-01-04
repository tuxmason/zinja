PKGNAME := gtk+
PKGVER := 2.24.32
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnome.org/pub/gnome/sources/$(PKGNAME)/2.24/$(PKGSRC) 
COPTS := --prefix=/usr \
	--enable-static \
	--sysconfdir=/etc \
	--with-xinput=yes \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-glibtest \
	--enable-introspection=no \
	--localedir=/usr/share/locale

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/xorg/$(PKGNAME)2
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)2
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
