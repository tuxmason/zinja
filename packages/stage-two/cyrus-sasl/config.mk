PKGNAME := cyrus-sasl
PKGVER := 2.1.26
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := ftp://ftp.cyrusimap.org/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-static \
	--enable-login \
	--sysconfdir=/etc \
	--with-dblib=gdbm \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-auth-sasldb \
	--with-dbpath=/var/lib/sasl/sasldb2 \
	--with-saslauthd=/var/run/saslauthd

CC := "${CC}"
CXX := "${CXX}"
HOST_CC := gcc

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
