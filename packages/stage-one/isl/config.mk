PKGNAME := isl
PKGVER := 0.17.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-stage-one-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://isl.gforge.inria.fr/$(PKGSRC)
COPTS := --prefix=$(CROSSTOOLS) \
	--with-gmp-prefix=$(CROSSTOOLS)
LDFLAGS := -Wl,-rpath,$(CROSSTOOLS)/lib
