PKGNAME := audit
PKGVER := 2.4.4
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--with-arm \
	--libdir=/lib \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--without-python \
	--without-python3 \
	--enable-systemd \
	--bindir=/bin \
	--sbindir=/sbin \
	--disable-zos-remote \
	--mandir=/usr/share/man \
	--libexecdir=/lib/audit

CC := "${CC} "
