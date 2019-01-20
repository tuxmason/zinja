PKGNAME := xfsprogs
PKGVER := 4.19.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.kernel.org/pub/linux/utils/fs/xfs/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--enable-libicu=yes \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-readline=yes

CC := "${CC}"
CXX := "${CXX}"

DEBUG := -DNDEBUG

DOCDIR := /usr/share/doc/$(PKGNAME)-$(PKGVER)

SHELL := /bin/bash

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
