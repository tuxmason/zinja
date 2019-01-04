PKGNAME := libinput
PKGVER := 1.8.4
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.freedesktop.org/software/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-static=yes \
	--sysconfdir=/etc \
	--disable-debug-gui \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--libexecdir=/usr/lib \
	--disable-documentation \
	--with-udev-dir=/lib/udev

CC := "${CC}"
CXX := "${CXX}"

LDFLAGS := "-Wl,-z,lazy"

PKGDIR := $(PKGDB)/xorg/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
