PKGNAME := Encode-JISX0213
PKGVER := 0.04
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://search.cpan.org/CPAN/authors/id/N/NE/NEZUMI/$(PKGSRC)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-obj
