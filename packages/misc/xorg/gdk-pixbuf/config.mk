PKGNAME := gdk-pixbuf
PKGVER := 2.32.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--with-x11 \
	--enable-static \
	--enable-debug=no \
	--disable-glibtest \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-gio-sniffing=no \
	--enable-introspection=no \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache

CC := "${CC} "
CXX := "${CXX} "
CPPFLAGS := -I$(SYSROOTDIR)/usr/lib/glib-2.0/include
