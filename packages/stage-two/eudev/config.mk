PKGNAME := eudev
PKGVER := 1.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-rootprefix="" \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--libexecdir=/lib \
	--bindir=/bin \
	--sbindir=/sbin \
	--disable-gudev \
	--disable-keymap \
	--enable-libkmod \
	--disable-gtk-doc-html \
	--with-rootlibdir=/lib \
	--enable-rule_generator \
	--disable-introspection \
	--with-firmware-path=/lib/firmware/updates:/lib/firmware
CC := "${CC} "
LDFLAGS := "-lrt"
