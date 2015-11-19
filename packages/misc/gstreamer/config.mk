PKGNAME := gstreamer
PKGVER := 0.10.36
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-tests \
	--disable-failing-tests \
	--with-package-origin="http://ftp.gnome.org/pub/gnome/sources/gstreamer/0.10/gstreamer-0.10.36.tar.xz"

CC := "${CC} "
CXX := "${CXX} "

PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
CPPFLAGS := -I$(SYSROOTDIR)/usr/lib/glib-2.0/include
