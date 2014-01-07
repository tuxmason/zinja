PKGNAME := bc
PKGVER := 1.06.95
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--with-readline \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info
CC := "${CC} "
CXX := "${CXX} "
