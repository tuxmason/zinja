PKGNAME := kmod
PKGVER := 24
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.kernel.org/pub/linux/utils/kernel/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--bindir=/sbin \
	--libdir=/lib \
	--sysconfdir=/etc \
	--disable-manpages \
	--with-xz \
	--with-zlib \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)
CC := "${CC} "
