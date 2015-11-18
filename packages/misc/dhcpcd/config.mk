PKGNAME := dhcpcd
PKGVER := 6.9.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--sbindir=/sbin \
	--sysconfdir=/etc \
	--dbdir=/var/lib/dhcpcd \
	--libexecdir=/usr/lib/dhcpcd \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
