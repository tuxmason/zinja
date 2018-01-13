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
	--program-prefix="eu-" \
	--disable-symbol-versioning

CC := "${CC} "
CXX := "${CXX} "
