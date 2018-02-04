PKGNAME := imlib2
PKGVER := 1.4.10
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://downloads.sourceforge.net/enlightenment/$(PKGSRC)
COPTS := --prefix=/usr \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
CXX := "${CXX} "
LDFLAGS := "-L$(SYSROOTDIR)/usr/lib -L$(SYSROOTDIR)/usr/lib"
PKG_CONFIG_SYSROOT_DIR := $(SYSROOTDIR)
PKG_CONFIG_PATH := "$(SYSROOTDIR)/usr/lib/pkgconfig:$(SYSROOTDIR)/usr/share/pkgconfig"
