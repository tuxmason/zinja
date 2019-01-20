PKGNAME := libmusicbrainz
PKGVER := 2.1.5
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)2/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)2
SRCURL := http://ftp.musicbrainz.org/pub/musicbrainz/historical/$(PKGSRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC}"
CXX := "${CXX}"

CXXFLAGS := "-std=c++98"

PKGDIR := $(PKGDB)/$(PKGNAME)2
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)2
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
