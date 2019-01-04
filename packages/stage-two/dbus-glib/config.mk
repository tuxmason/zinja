PKGNAME := dbus-glib
PKGVER := 0.110
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://dbus-glib.freedesktop.org/releases/dbus-glib/$(PKGSRC)
COPTS := --prefix=/usr \
	--disable-tests \
	--enable-static \
	--enable-shared \
	--sysconfdir=/etc \
	--disable-gtk-doc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--libexecdir=/usr/lib/dbus-glib-1.0 \
	--with-dbus-binding-tool="/usr/bin/dbus-binding-tool"

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
