PKGNAME := HTTP-Cookies
PKGVER := 6.04
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://search.cpan.org/CPAN/authors/id/O/OA/OALDERS/$(PKGSRC)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-obj
