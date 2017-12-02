PKGNAME := mpc
PKGVER := 1.0.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-stage-one-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://www.multiprecision.org/mpc/download/$(PKGVER)
COPTS := --prefix=$(CROSSTOOLS) \
	--disable-static \
	--with-gmp=$(CROSSTOOLS) \
	--with-mpfr=$(CROSSTOOLS)
LDFLAGS := -Wl,-rpath,$(CROSSTOOLS)/lib
