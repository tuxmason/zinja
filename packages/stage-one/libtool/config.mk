PKGNAME := libtool
PKGVER := 2.4.6
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-stage-one-obj
PATCHDIR := $(PATCHDB)/$(PKGNAME)-cross
PATCHLIST := $(PATCHDIR)/list.txt
SRCURL := http://ftp.gnu.org/gnu/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=$(CROSSTOOLS) \
        --disable-static
