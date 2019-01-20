PKGNAME := LibRaw
DEBNAME := libraw
PKGVER := 0.19.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := 
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--disable-examples \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(DEBNAME)
ORIGSRC := $(DEBNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(DEBNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
