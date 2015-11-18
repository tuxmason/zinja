PKGNAME := lame
PKGVER := 3.99.5
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--with-pic \
	--disable-mp3x \
	--enable-shared \
	--enable-mp3rtp \
	--disable-gtktest \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
