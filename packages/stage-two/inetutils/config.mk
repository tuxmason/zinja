PKGNAME := inetutils
PKGVER := 1.9.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--host=$(TARGETARCH) \
	--build=$(BUILDARCH) \
	--libexecdir=/usr/sbin \
	--localstatedir=/var   \
	--disable-logger       \
	--disable-ifconfig     \
	--disable-syslogd      \
	--disable-whois        \
	--disable-servers
CC := "${CC} "
