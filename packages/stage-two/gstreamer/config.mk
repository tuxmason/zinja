PKGNAME := gstreamer
PKGVER := 1.14.4
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://gstreamer.freedesktop.org/src/gstreamer/$(PKGSRC)
COPTS := --prefix=/usr \
	--disable-tests \
	--disable-rpath \
	--enable-static \
	--sysconfdir=/etc \
	--disable-examples \
	--disable-benchmarks \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-fatal-warnings \
	--enable-introspection=no \
	--with-ptp-helper-permissions=none \
	--with-package-name="$(VENDOR) - GStreamer 1.14.4"

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
