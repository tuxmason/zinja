PKGNAME := libnetfilter-queue
PKGVER := 1.0.3
PKGSRC := libnetfilter_queue-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/libnetfilter_queue-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/libnetfilter_queue-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://netfilter.org/projects/$(PKGNAME)/files/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-static \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/libnetfilter_queue-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
