PKGNAME := wayland
PKGVER := 1.14.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://wayland.freedesktop.org/releases/$(PKGSRC)
COPTS := --prefix=/usr \
	--disable-tests \
	--sysconfdir=/etc \
	--with-host-scanner \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-documentation \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache

CC := "${CC}"
CXX := "${CXX}"

LDFLAGS := "-Wl,-z,lazy -L$(SYSROOTDIR)/lib -L$(SYSROOTDIR)/usr/lib"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
