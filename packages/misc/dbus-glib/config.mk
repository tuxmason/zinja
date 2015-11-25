PKGNAME := dbus-glib
PKGVER := 0.104
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--disable-tests \
	--disable-gtk-doc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-dbus-binding-tool=/usr/bin/dbus-binding-tool

CC := "${CC} "
CXX := "${CXX} "
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
CPPFLAGS := "-I$(SYSROOTDIR)/usr/lib/glib-2.0/include -I$(SYSROOTDIR)/usr/lib/dbus-1.0/include"
