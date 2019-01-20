PKGNAME := x264
PKGVER := snapshot-20190110-2245-stable
DEBVER := 20190110-2245
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://download.videolan.org/$(PKGNAME)/snapshots/$(PKGSRC)
COPTS := --prefix=/usr \
	--disable-asm \
	--enable-pic \
	--disable-cli \
	--enable-static \
	--enable-shared \
	--host=$(TARGETARCH) \
	--sysroot=$(SYSROOTDIR) \
	--extra-cflags=-fno-aggressive-loop-optimizations

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(DEBVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
