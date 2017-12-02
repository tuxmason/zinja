PKGNAME := mpfr
PKGVER := 3.1.6
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://www.mpfr.org/mpfr-$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-shared \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)
CC := "${CC} "
