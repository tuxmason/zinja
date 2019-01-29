PKGNAME := lynx
PKGVER := 2.8.9rel.1
PKGSRC := $(PKGNAME)$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://invisible-mirror.net/archives/lynx/tarballs/$(PKGSRC)
COPTS := --prefix=/usr \
	--with-ssl \
	--with-zlib \
	--with-bzlib \
	--enable-nls \
	--enable-ipv6 \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--sysconfdir=/etc/lynx \
	--with-screen=ncursesw \
	--enable-locale-charset \
	--cache-file=$(PKGSRCDIR)/$(PKGNAME).cache \
	--datadir=/usr/share/doc/$(PKGNAME)-$(PKGVER)

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
