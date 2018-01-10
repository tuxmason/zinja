PKGNAME := nspr
PKGVER := 4.17
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
ifeq ($(ARCH),x86_64)
        COPTS := $(COPTS) --enable-64bit
endif
