PKGNAME := libarchive
PKGVER := 3.1.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--enable-bsdtar \
	--enable-bsdcpio \
	--without-xml2 \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
