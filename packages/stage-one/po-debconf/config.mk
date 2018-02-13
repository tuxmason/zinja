PKGNAME := po-debconf
PKGVER := 1.0.20
PKGSRC := $(PKGNAME)_$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://http.debian.net/debian/pool/main/p/$(PKGNAME)/$(PKGSRC)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-obj
