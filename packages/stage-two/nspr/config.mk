PKGNAME := nspr
PKGVER := 4.20
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://archive.mozilla.org/pub/nspr/releases/v$(PKGVER)/src/$(PKGSRC)
COPTS := --prefix=/usr \
	--with-mozilla \
	--with-pthreads \
	--sysconfdir=/etc \
	--host=$(TARGETARCH) \
	--build=$(BUILDARCH) \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache

CC := "${CC} "
CXX := "${CXX} "

HOST_CC := gcc

ifeq ($(ARCH),$(filter $(ARCH),x86_64 aarch64))
	COPTS := $(COPTS) --enable-64bit
endif

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
