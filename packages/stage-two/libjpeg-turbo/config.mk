PKGNAME := libjpeg-turbo
PKGVER := 1.5.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--with-jpeg8 \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--docdir=/usr/share/doc/$(PKGNAME)-$(PKGVER)

CC := "${CC} "
CXX := "${CXX} "
