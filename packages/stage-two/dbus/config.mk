PKGNAME := dbus
PKGVER := 1.10.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--libexecdir=/usr/lib/dbus-1.0 \
	--localstatedir=/var \
	--enable-abstract-sockets \
	--enable-tests=no \
	--enable-systemd \
	--disable-xml-docs \
	--disable-doxygen-docs \
	--with-init-scripts=none \
	--with-console-auth-dir=/run/console \
	--with-systemdsystemunitdir=/lib/systemd/system \
	--docdir=/usr/share/doc/dbus-1.10.0 \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
CXX := "${CXX} "
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
