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
	--enable-static \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC}"
CXX := "${CXX}"

ifeq ($(ARCH),$(filter $(ARCH),arm aarch64))
	COPTS := $(COPTS) \
		--enable-omap-experimental-api \
		--enable-exynos-experimental-api
endif

ifeq ($(ARCH),$(filter $(ARCH),x86 x86_64))
	COPTS := $(COPTS) \
		--enable-intel
endif

PKGDIR := $(PKGDB)/xorg/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
