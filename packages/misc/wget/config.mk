PKGNAME := wget
PKGVER := 1.16.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--with-ssl=openssl \
	--host=$(TARGETARCH) \
	--build=$(BUILDARCH) \
	--sysconfdir=/etc/wget

CC := "${CC} "
