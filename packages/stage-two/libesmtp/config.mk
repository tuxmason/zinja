PKGNAME := libesmtp
PKGVER := 1.0.6
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://www.stafford.uklinux.net/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-etrn \
	--with-openssl \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
CXX := "${CXX} "
