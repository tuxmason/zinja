PKGNAME := dpkg
PKGVER := 1.18.24
PKGSRC := $(PKGNAME)_$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://http.debian.net/debian/pool/main/d/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--disable-dselect \
	--localstatedir=/var \
	--disable-start-stop-daemon \
	--with-admindir=/var/lib/dpkg \
	--disable-update-alternatives \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC}"
CXX := "${CXX}"

PERL := /usr/bin/perl
PERL_LIBDIR := /usr/share/perl5/site_perl

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
