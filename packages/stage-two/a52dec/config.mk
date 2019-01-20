PKGNAME := a52dec
PKGVER := 0.7.4
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://liba52.sourceforge.net/files/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-shared \
	--enable-static \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--mandir=/usr/share/man

CC := "${CC}"
CXX := "${CXX}"

ifeq ($(ARCH),$(filter $(ARCH),x86_64 aarch64))
	CFLAGS := "-g -O2 -fPIC"
else
	CFLAGS := "-g -O2"
endif

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
