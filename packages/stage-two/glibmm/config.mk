PKGNAME := glibmm
PKGVER := 2.55.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnome.org/pub/gnome/sources/$(PKGNAME)/2.55/$(PKGSRC)
COPTS := --prefix=/usr \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-documentation

CC := "${CC} "
CXX := "${CXX} "
PKG_CONFIG_SYSROOT_DIR := $(SYSROOTDIR)
LDFLAGS := "-L$(SYSROOTDIR)/lib -L$(SYSROOTDIR)/usr/lib"
PKG_CONFIG_PATH := "$(SYSROOTDIR)/usr/lib/pkgconfig:$(SYSROOTDIR)/usr/share/pkgconfig"
