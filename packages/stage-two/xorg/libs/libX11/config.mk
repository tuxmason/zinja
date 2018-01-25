PKGNAME := libX11
PKGVER := 1.6.5
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.x.org/pub/individual/lib/$(PKGSRC)
COPTS := --prefix=/usr \
	--without-perl \
	--disable-specs \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-malloc0returnsnull \
	--with-keysymdefdir=$(SYSROOTDIR)/usr/include/X11

CC := "${CC} "
CXX := "${CXX} "
X11_CFLAGS := "-I$(SYSROOTDIR)/usr/include"
