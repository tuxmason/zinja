PKGNAME := btrfs-progs
PKGVER := 4.19.1
PKGSRC := $(PKGNAME)-v$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-v$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-v$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.kernel.org/pub/linux/kernel/people/kdave/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--disable-zstd \
	--bindir=/bin \
	--disable-python \
	--sysconfdir=/etc \
	--disable-backtrace \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--mandir=/usr/share/man \
	--disable-documentation

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
