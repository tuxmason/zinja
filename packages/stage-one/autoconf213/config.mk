PKGNAME := autoconf
PKGVER := 2.13
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)213-$(PKGVER)-stage-one-obj
PATCHDIR := $(PATCHDB)/$(PKGNAME)213
PATCHLIST := $(PATCHDIR)/list.txt
SRCURL := http://ftp.gnu.org/gnu/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=$(CROSSTOOLS) \
	--program-suffix=2.13
