PKGNAME := libnetfilter-cttimeout
PKGVER := 1.0.0
PKGSRC := libnetfilter_cttimeout-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/libnetfilter_cttimeout-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/libnetfilter_cttimeout-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://netfilter.org/projects/libnetfilter_cttimeout/files/$(PKGSRC)
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
DISTRIBSRC := $(PKGROOT)/libnetfilter_cttimeout-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
