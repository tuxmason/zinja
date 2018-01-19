PKGNAME := libdbi
PKGVER := 0.9.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://sourceforge.net/projects/$(PKGNAME)/files/$(PKGNAME)/$(PKGNAME)-$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
	--disable-docs \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
CXX := "${CXX} "
