PKGNAME := gmime
PKGVER := 3.2.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)3/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)3
SRCURL := http://ftp.gnome.org/pub/gnome/sources/$(PKGNAME)/3.2/$(PKGSRC)
COPTS := --prefix=/usr \
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

PKGDIR := $(PKGDB)/$(PKGNAME)3
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)3
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
