PKGNAME := LibRaw
PKGVER := 0.17.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
DEMOSAICPKGNAME := $(PKGNAME)-demosaic-pack
DEMOSAICPKGVER := GPL2-0.17.0
DEMOSAICPKGSRC := $(DEMOSAICPKGNAME)-$(DEMOSAICPKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
DEMOSAICPKGSRCDIR := $(TCBUILDROOT)/$(DEMOSAICPKGNAME)-$(DEMOSAICPKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--enable-jpeg \
	--enable-jasper \
	--enable-lcms \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-demosaic-pack-gpl3 \
	--docdir=/usr/share/doc/$(PKGNAME)-$(PKGVER) \
	--enable-demosaic-pack-gpl2=$(DEMOSAICPKGSRCDIR)

CC := "${CC} "
CXX := "${CXX} "
