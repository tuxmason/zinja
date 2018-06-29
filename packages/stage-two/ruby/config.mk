PKGNAME := ruby
PKGVER := 2.5.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
HOST_PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-host-obj
TARGET_PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-target-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://cache.ruby-lang.org/pub/$(PKGNAME)/2.5/$(PKGSRC)

HOST_COPTS := --prefix=$(HOST_PKGOBJDIR)/host \
	--disable-werror \
	--disable-rpath \
	--without-gmp \
	--disable-install-doc \
	--disable-install-rdoc \
	--disable-install-capi

TARGET_COPTS := --prefix=/usr \
	--enable-shared \
	--disable-rpath \
	--disable-werror \
	--without-jemalloc \
	--disable-install-doc \
	--disable-install-rdoc \
	--disable-install-capi \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-install-static-library \
	--with-baseruby=$(HOST_PKGOBJDIR)/host/bin/ruby \
	--cache-file=$(TARGET_PKGOBJDIR)/$(PKGNAME).cache

HOST_AR := ar
HOST_CC := gcc
HOST_CXX := g++
HOST_RANLIB := ranlib

TARGET_CC := "${CC}"
TARGET_CXX := "${CXX}"

CFLAGS := "-I$(SYSROOTDIR)/usr/include -fno-omit-frame-pointer -fno-strict-aliasing"
CPPFLAGS := "-I$(SYSROOTDIR)/usr/include -fno-omit-frame-pointer -fno-strict-aliasing"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
