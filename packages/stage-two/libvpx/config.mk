PKGNAME := libvpx
PKGVER := 1.7.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://github.com/webmproject/$(PKGNAME)/archive/v1.7.0/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-vp8 \
	--enable-vp9 \
	--enable-pic \
	--enable-libs \
	--disable-debug \
	--enable-shared \
	--disable-werror \
	--enable-postproc \
	--target=generic-gnu \
	--disable-install-srcs \
	--disable-optimizations \
	--enable-vp9-highbitdepth

CC := "${CC}"
CXX := "${CXX}"
LD := $(CC)
AS := "${AS}"
AR := "${AR}"
STRIP := "${STRIP}"

CROSS := $(TARGETARCH)-

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
