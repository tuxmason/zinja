PKGNAME := kmod
PKGVER := 16
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--bindir=/bin \
	--libdir=/lib \
	--sysconfdir=/etc \
	--disable-manpages \
	--with-xz \
	--with-zlib \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)
CC := "${CC} "
