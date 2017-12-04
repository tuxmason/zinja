PKGNAME := less
PKGVER := 487
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://www.greenwoodsoftware.com/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--bindir=/bin \
	--sysconfdir=/etc \
        --build=$(BUILDARCH) \
	--host=$(TARGETARCH)
CC := "${CC} "
