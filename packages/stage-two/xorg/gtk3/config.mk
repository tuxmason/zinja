PKGNAME := gtk+
PKGVER := 3.20.10
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnome.org/pub/gnome/sources/$(PKGNAME)/2.24/$(PKGSRC) 
COPTS := --prefix=/usr \
	--enable-static \
	--disable-gtk-doc \
	--sysconfdir=/etc \
	--disable-glibtest \
	--enable-x11-backend \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-wayland-backend \
	--enable-introspection=no \
	--enable-broadway-backend \
	--disable-schemas-compile

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/xorg/$(PKGNAME)3
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)3
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
