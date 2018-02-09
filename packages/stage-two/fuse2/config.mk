PKGNAME := fuse
PKGVER := 2.9.7
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)2/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)2
SRCURL := https://github.com/libfuse/libfuse/releases/download/$(PKGNAME)-$(PKGVER)/$(PKGRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
CXX := "${CXX} "
