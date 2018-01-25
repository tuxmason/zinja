PKGNAME := fontconfig
PKGVER := 2.12.6
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.freedesktop.org/software/$(PKGNAME)/release/$(PKGSRC)
COPTS := --prefix=/usr \
	--disable-docs \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--docdir=/usr/share/doc/$(PKGNAME)-$(PKGVER)

CC := "${CC} "
CXX := "${CXX} "
CFLAGS := "-I$(SYSROOTDIR)/usr/include/freetype2"
