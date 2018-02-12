PKGNAME := gettext
PKGVER := 1.07
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz 
PKGSRCDIR := $(TCBUILDROOT)/Locale-gettext-$(PKGVER)
PATCHLIST := $(PATCHDB)/Locale-gettext/list.txt
PATCHDIR := $(PATCHDB)/Locale-gettext
SRCURL := http://search.cpan.org/CPAN/authors/id/P/PV/PVANDRY/$(PKGSRC)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-obj
