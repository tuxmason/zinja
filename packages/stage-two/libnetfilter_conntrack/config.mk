PKGNAME := libnetfilter-conntrack
PKGVER := 1.0.6
PKGSRC := libnetfilter_conntrack-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/libnetfilter_conntrack-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/libnetfilter_conntrack-$(PKGVER)-obj
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
DISTRIBSRC := $(PKGROOT)/libnetfilter_conntrack-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
