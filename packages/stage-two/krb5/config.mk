PKGNAME := krb5
PKGVER := 1.17
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://kerberos.org/dist/$(PKGNAME)/$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
	--without-tcl \
	--with-libedit \
	--with-readline \
	--enable-shared \
	--disable-rpath \
	--with-system-et \
	--with-system-ss \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-dns-for-realm \
	--with-system-verto=no \
	--localstatedir=/var/lib \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache

CC := "${CC}"
CXX := "${CXX}"

CPPFLAGS := "$$CPPFLAGS -fPIC -DDESTRUCTOR_ATTR_WORKS=1 "

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
