PKGNAME := expat
PKGVER := 2.2.5
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-stage-one-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://prdownloads.sourceforge.net/expat/$(PKGSRC)
COPTS := --prefix=$(CROSSTOOLS) \
	--disable-static
