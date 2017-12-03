PKGNAME := Linux-PAM
PKGVER := 1.3.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://www.linux-pam.org/library/$(PKGSRC)
COPTS := --prefix=/usr \
	--libdir=/lib \
	--disable-nls \
	--disable-db \
	--enable-cracklib \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-read-both-confs \
	--enable-securedir=/lib/security
CC := "${CC} "
