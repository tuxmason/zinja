PKGNAME := pcre2
PKGVER := 10.32
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://downloads.sourceforge.net/pcre/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-jit \
	--enable-static \
	--enable-unicode \
	--enable-pcre2-16 \
	--enable-pcre2-32 \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-pcre2grep-libz \
	--enable-pcre2grep-libbz2 \
	--enable-pcre2test-libreadline \
	--docdir=/usr/share/doc/$(PKGNAME)-$(PKGVER)

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
