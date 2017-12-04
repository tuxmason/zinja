PKGNAME := inetutils
PKGVER := 1.9.4
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnu.org/gnu/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--host=$(TARGETARCH) \
	--build=$(BUILDARCH) \
	--libexecdir=/usr/sbin \
	--localstatedir=/var   \
	--disable-logger       \
	--disable-ifconfig     \
	--disable-syslogd      \
	--disable-whois        \
	--disable-rsh \
	--disable-rcp \
	--disable-rexec \
	--disable-rlogin \
	--disable-servers
CC := "${CC} "
