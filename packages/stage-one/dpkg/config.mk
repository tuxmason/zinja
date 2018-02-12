PKGNAME := dpkg
PKGVER := 1.18.24
PKGSRC := $(PKGNAME)_$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://http.debian.net/debian/pool/main/d/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=$(CROSSTOOLS) \
	--disable-dselect \
	--build=$(TARGETARCH) \
	--target=$(TARGETARCH) \
	--disable-start-stop-daemon \
	--disable-update-alternatives \
	--localstatedir=$(SYSROOTDIR)/var \
	--with-admindir=$(SYSROOTDIR)/var/lib/dpkg

PERL_LIBDIR := $(shell $(CROSSTOOLS)/bin/perl -V:sitelib | cut -d\' -f2)
