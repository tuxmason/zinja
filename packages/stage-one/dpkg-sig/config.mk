PKGNAME := dpkg-sig
PKGVER := 0.13.1+nmu2
PKGSRC := $(PKGNAME)_$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.debian.org/debian/pool/main/d/$(PKGNAME)/$(PKGSRC)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-obj
PERL := $(CROSSTOOLS)/bin/perl