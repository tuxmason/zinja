PKGNAME := mozjs
PKGVER := 52.2.1gnome1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnome.org/pub/gnome/teams/releng/tarballs-needing-help/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--with-x \
	--x-includes=$(SYSROOTDIR)/usr/include \
	--x-libraries=$(SYSROOTDIR)/usr/lib \
	--with-intl-api \
	--disable-tests \
	--enable-readline \
	--disable-rust \
	--disable-gold \
	--enable-release \
	--disable-valgrind \
	--disable-warnings-as-errors \
	--sysconfdir=/etc \
	--with-system-icu \
	--with-system-zlib \
	--with-system-nspr \
	--enable-threadsafe \
	--target=$(TARGETARCH)

CC := "${CC}"
CXX := "${CXX}"

SHELL := /bin/bash

HOST_CC := gcc
HOST_CXX := g++
PKG_CONFIG := $(CROSSTOOLS)/bin/$(TARGETARCH)-pkg-config

PKGDIR := $(PKGDB)/xorg/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
