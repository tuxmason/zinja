PKGNAME := dbus
PKGVER := 1.12.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://dbus.freedesktop.org/releases/dbus/$(PKGSRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--libexecdir=/usr/lib/dbus-1.0 \
	--localstatedir=/var \
	--enable-tests=no \
	--enable-systemd \
	--disable-xml-docs \
	--disable-doxygen-docs \
	--enable-user-session \
	--with-console-auth-dir=/run/console \
	--with-system-pid-file=/run/dbus/pid \
	--with-system-socket=/run/dbus/system_bus_socket \
	--docdir=/usr/share/doc/dbus-1.12.2 \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
CXX := "${CXX} "
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
