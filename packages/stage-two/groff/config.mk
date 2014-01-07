PKGNAME := groff
PKGVER := 1.22.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--with-x=no \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)
CC := "${CC} "
CXX := "${CXX} "
PAGESIZE := A4
