PKGNAME := ulogd
PKGVER := 2.0.5
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://netfilter.org/projects/$(PKGNAME)/files/$(PKGSRC)
COPTS := --prefix=/usr \
	--with-mysql \
	--with-sqlite \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--without-dbi \
	--without-pgsql

CC := "${CC}"
CXX := "${CXX}"

CFLAGS := "-D_GNU_SOURCE"
LDFLAGS := "-L$(SYSROOTDIR)/lib -L$(SYSROOTDIR)/usr/lib"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
