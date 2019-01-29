PKGNAME := fcron
PKGVER := 3.3.0
PKGSRC := $(PKGNAME)-$(PKGVER).src.tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://fossies.org/linux/misc/$(PKGSRC)
COPTS := --prefix=/usr \
	--disable-checks \
	--with-sendmail=no \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--localstatedir=/var \
	--with-answer-all=no \
	--with-boot-install=no \
	--sysconfdir=/etc/fcron \
	--with-piddir=/run/fcron \
	--with-spooldir=/var/spool/fcron \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
