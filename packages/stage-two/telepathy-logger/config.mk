PKGNAME := telepathy-logger
PKGVER := 0.8.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://telepathy.freedesktop.org/releases/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-call \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-schemas-compile \
	--libexecdir=/usr/lib/telepathy

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
