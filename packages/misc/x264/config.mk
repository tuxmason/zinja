PKGNAME := x264
PKGVER := snapshot-20151114-2245-stable
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--enable-shared \
	--enable-static \
	--disable-asm \
	--enable-pic \
	--extra-cflags=-fno-aggressive-loop-optimizations \
	--host=$(TARGETARCH)

CC := "${CC} "
