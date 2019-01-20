PKGNAME := nghttp2
PKGVER := 1.35.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://github.com/nghttp2/nghttp2/releases/download/v$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-app \
	--with-systemd \
	--with-boost=yes \
	--sysconfdir=/etc \
	--without-jemalloc \
	--without-neverbleed \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-hpack-tools \
	--disable-python-bindings \
	--with-boost-libdir=$(SYSROOTDIR)/usr/lib

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
