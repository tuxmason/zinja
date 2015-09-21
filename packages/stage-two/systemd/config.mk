PKGNAME := systemd
PKGVER := 213
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--libexecdir=/usr/lib \
	--docdir=/usr/share/doc/systemd-213 \
	--with-rootprefix="" \
	--with-rootlibdir=/lib \
	--enable-split-usr \
	--disable-gudev \
	--disable-nls \
	--disable-localed \
	--with-distro=other \
	--disable-efi \
	--disable-gnuefi \
	--with-kbd-loadkeys=/bin/loadkeys \
	--with-kbd-setfont=/bin/setfont \
	--with-dbuspolicydir=/etc/dbus-1/system.d \
	--with-dbusinterfacedir=/usr/share/dbus-1/interfaces \
	--with-dbussessionservicedir=/usr/share/dbus-1/services \
	--with-dbussystemservicedir=/usr/share/dbus-1/system-services \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache
