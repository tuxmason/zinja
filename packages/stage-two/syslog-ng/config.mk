PKGNAME := syslog-ng
PKGVER := 3.13.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://github.com/balabit/syslog-ng/archive/$(PKGSRC)
COPTS := --prefix=/usr \
        --build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-python \
	--with-jsonc=system \
	--disable-mongodb \
	--with-mongoc=no \
	--disable-amqp \
	--enable-systemd \
	--sysconfdir=/etc/syslog-ng \
	--without-libmongo-client \
	--localstatedir=/var/lib/syslog-ng

CC := "${CC} "
CPPFLAGS := "-I$(SYSROOTDIR)/usr/include/glib-2.0 \
	-I$(SYSROOTDIR)/usr/lib/glib-2.0/include \
	-I$(SYSROOTDIR)/usr/include/json-c"
LDFLAGS := "-L$(SYSROOTDIR)/lib -L$(SYSROOTDIR)/usr/lib"
PKG_CONFIG_PATH := "$(SYSROOTDIR)/usr/lib/pkgconfig:$(SYSROOTDIR)/usr/share/pkgconfig"
