PKGNAME := xorg-server
PKGVER := 1.19.6
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.x.org/pub/individual/xserver/$(PKGSRC)
COPTS := --prefix=/usr \
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
	--with-xkb-output=/var/lib/xkb

CC := "${CC} "
CXX := "${CXX} "
LDFLAGS := "-Wl,-z,lazy"
PKG_CONFIG_SYSROOT_DIR := $(SYSROOTDIR)
CFLAGS := "-D_GNU_SOURCE -D__gid_t=gid_t -D__uid_t=uid_t"
PKG_CONFIG_PATH := "$(SYSROOTDIR)/usr/lib/pkgconfig:$(SYSROOTDIR)/usr/share/pkgconfig"
