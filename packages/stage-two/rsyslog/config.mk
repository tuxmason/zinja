PKGNAME := rsyslog
PKGVER := 7.4.7
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--sbindir=/sbin \
	--disable-debug \
	--enable-kmsg \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-libgcrypt \
	--enable-usertools \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache
CC := "${CC} "
CXX := "${CXX} "
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
