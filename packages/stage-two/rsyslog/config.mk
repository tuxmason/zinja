PKGNAME := rsyslog
PKGVER := 7.4.8
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
CFLAGS := "-I$(SYSROOTDIR)/usr/include/json-c"
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
