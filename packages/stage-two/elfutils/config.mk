PKGNAME := elfutils
PKGVER := 0.170
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://sourceware.org/ftp/$(PKGNAME)/$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
	--with-zlib \
	--with-bzlib \
	--with-lzma \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--program-prefix="eu-"

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
