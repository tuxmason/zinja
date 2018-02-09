PKGNAME := xrdp
PKGVER := 0.9.5
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://github.com/neutrinolabs/$(PKGNAME)/releases/download/v$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-pam \
	--enable-fuse \
	--enable-tjpeg \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
CXX := "${CXX} "
LDFLAGS := "-L$(SYSROOTDIR)/usr/lib -L$(SYSROOTDIR)/usr/lib"

TURBOJPEG_PATH := $(SYSROOTDIR)/usr
PKG_CONFIG_SYSROOT_DIR := $(SYSROOTDIR)
PKG_CONFIG_PATH := "$(SYSROOTDIR)/usr/lib/pkgconfig:$(SYSROOTDIR)/usr/share/pkgconfig"
