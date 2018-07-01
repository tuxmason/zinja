PKGNAME := kbd
PKGVER := 2.0.4
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.kernel.org/pub/linux/utils/kbd/$(PKGSRC)
COPTS := --prefix=/usr \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-libkeymap \
	--enable-optional-progs \
        --cache-file=$(PKGOBJDIR)/$(PKGNAME).cache

CC := "${CC}"
CXX := "${CXX}"

PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
