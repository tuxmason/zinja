PKGNAME := weston
PKGVER := 5.0.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://wayland.freedesktop.org/releases/$(PKGSRC)
COPTS := --prefix=/usr \
	--with-pam \
	--enable-static \
	--enable-clients \
	--enable-xwayland \
	--sysconfdir=/etc \
	--libexecdir=/usr/sbin \
	--disable-setuid-install \
	--enable-x11-compositor \
	--enable-drm-compositor \
	--enable-wayland-compositor \
	--enable-headless-compositor \
	--enable-demo-clients-install \
	--enable-fbdev-compositor \
	--enable-rdp-compositor \
	--enable-screen-sharing \
	--enable-vaapi-recorder \
	--enable-clients \
	--enable-weston-launch \
	--enable-systemd-login \
	--enable-systemd-notify \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/xorg/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
