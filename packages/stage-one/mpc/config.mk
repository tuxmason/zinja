PKGNAME := mpc
PKGVER := 1.0.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-stage-one-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=$(CROSSTOOLS) \
	--disable-static \
	--with-gmp=$(CROSSTOOLS) \
	--with-mpfr=$(CROSSTOOLS)
LDFLAGS := -Wl,-rpath,$(CROSSTOOLS)/lib
