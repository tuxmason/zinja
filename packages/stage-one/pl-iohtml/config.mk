PKGNAME := IO-HTML
PKGVER := 1.001
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://search.cpan.org/CPAN/authors/id/C/CJ/CJM/$(PKGSRC)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-obj