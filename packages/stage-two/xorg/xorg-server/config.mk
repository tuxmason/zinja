PKGNAME := xorg-server
PKGVER := 1.20.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.x.org/pub/individual/xserver/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-static \
	--enable-dmx \
	--enable-dri \
	--enable-dri2 \
	--enable-glamor \
	--enable-kdrive \
	--sysconfdir=/etc \
	--enable-composite \
	--enable-config-udev \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-suid-wrapper \
	--disable-systemd-logind \
	--disable-selective-werror \
	--with-xkb-output=/var/lib/xkb \
	--with-fontrootdir=/usr/share/fonts

CC := "${CC}"
CXX := "${CXX}"

LDFLAGS := "-Wl,-z,lazy"

CFLAGS := "-D_GNU_SOURCE -D__gid_t=gid_t -D__uid_t=uid_t"

PKGDIR := $(PKGDB)/xorg/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
