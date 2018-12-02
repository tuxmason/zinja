PKGNAME := glib
PKGVER := 2.55.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.acc.umu.se/pub/gnome/sources/glib/2.55/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-man \
	--disable-libelf \
	--enable-static \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-pcre=system \
	--cache-file=$(PKGOBJDIR)/glib2.cache

CC := "${CC}"
CXX := "${CXX}"

CFLAGS := "-I$(SYSROOTDIR)/usr/include"
LDFLAGS := "-L$(SYSROOTDIR)/lib -L$(SYSROOTDIR)/usr/lib"

PKGDIR := $(PKGDB)/$(PKGNAME)2
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)2
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
