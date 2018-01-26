PKGNAME := libdrm
PKGVER := 2.4.89
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://dri.freedesktop.org/libdrm/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-udev \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-intel \
	--enable-static \
	--disable-manpages \
	--enable-omap-experimental-api \
	--enable-exynos-experimental-api 

CC := "${CC} "
CXX := "${CXX} "
