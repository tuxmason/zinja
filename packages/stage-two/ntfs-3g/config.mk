PKGNAME := ntfs-3g
PKGVER := 2017.3.23
PKGSRC := $(PKGNAME)_ntfsprogs-$(PKGVER).tgz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)_ntfsprogs-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://tuxera.com/opensource/$(PKGSRC)
COPTS := --prefix=/usr \
	--sbindir=/usr/bin \
	--enable-extras \
	--sysconfdir=/etc \
	--disable-ldconfig \
	--enable-posix-acls \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-fuse=internal \
	--mandir=/usr/share/man \
	--enable-xattr-mappings

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
