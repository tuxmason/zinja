PKGNAME := zlib
PKGVER := 1.2.11
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://zlib.net/$(PKGSRC)
COPTS := --prefix=/usr \
	 --sharedlibdir=/lib \
	 --shared
CC := "${CC} "
