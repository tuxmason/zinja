PKGNAME := eudev
PKGVER := 2.1.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
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
	--enable-keymap \
	--enable-libkmod \
	--enable-split-usr \
	--disable-gtk-doc-html \
	--with-rootlibdir=/lib \
	--enable-rule_generator \
	--disable-introspection \
	--with-firmware-path=/lib/firmware/updates:/lib/firmware
CC := "${CC} "
LDFLAGS := "-lrt -lblkid"
