PKGNAME := mpc
PKGVER := 1.0.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://www.multiprecision.org/mpc/download/$(PKGVER)
COPTS := --prefix=/usr \
	--enable-shared \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)
CC := "${CC} "
