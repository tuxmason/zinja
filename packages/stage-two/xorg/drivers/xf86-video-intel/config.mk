PKGNAME := xf86-video-intel
PKGVER := 20180223
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://anduin.linuxfromscratch.org/BLFS/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-uxa \
	--enable-kms-only \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--libexecdir=/usr/bin \
	--mandir=/usr/share/man

CC := "${CC}"
CXX := "${CXX}"

LDFLAGS := "-Wl,-z,lazy"

PKGDIR := $(PKGDB)/xorg/drivers/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
