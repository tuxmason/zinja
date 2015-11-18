PKGNAME := alsa-lib
PKGVER := 1.1.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--disable-python \
	--enable-rawmidi \
	--enable-seq \
	--enable-aload \
	--disable-resmgr \
	--without-versioned \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
