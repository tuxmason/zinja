PKGNAME := flac
PKGVER := 1.3.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://downloads.xiph.org/releases/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--with-pic \
	--enable-ogg \
	--enable-static \
	--enable-shared \
	--disable-rpath \
	--disable-oggtest \
	--sysconfdir=/etc \
	--host=$(TARGETARCH) \
	--build=$(BUILDARCH) \
	--localstatedir=/var \
	--disable-xmms-plugin \
	--with-ogg=$(SYSROOTDIR)/usr

CC := "${CC}"
CXX := "${CXX}"

ifeq ($(ARCH),x86_64)
	COPTS := $(COPTS) --enable-sse
endif

CFLAGS := "-I$(SYSROOTDIR)/usr/include"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
