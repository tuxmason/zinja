PKGNAME := gmime
PKGVER := 2.6.23
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)2/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)2
SRCURL := http://ftp.gnome.org/pub/gnome/sources/$(PKGNAME)/2.6/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-smime \
	--disable-gtk-doc \
	--disable-glibtest \
	--sysconfdir=/etc \
	--enable-largefile \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-introspection=no \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)2
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)2
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
