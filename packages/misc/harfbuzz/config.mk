PKGNAME := harfbuzz
PKGVER := 1.0.6
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--with-gobject \
	--with-icu=no \
	--with-graphite2 \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
CXX := "${CXX} "

PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
CPPFLAGS := "-I$(SYSROOTDIR)/usr/lib/glib-2.0/include"
