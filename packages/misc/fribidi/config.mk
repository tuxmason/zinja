PKGNAME := fribidi
PKGVER := 0.19.7
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--enable-static \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
CPPFLAGS := -I$(SYSROOTDIR)/usr/lib/glib-2.0/include
