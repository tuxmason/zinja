PKGNAME := file
PKGVER := 5.32
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-stage-one-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := ftp://ftp.astron.com/pub/file/$(PKGSRC)
COPTS := --prefix=$(CROSSTOOLS) \
	--disable-static
