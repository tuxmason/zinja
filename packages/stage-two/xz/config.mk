PKGNAME := xz
PKGVER := 5.0.5
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--disable-static \
	--libdir=/lib \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)
CC := "${CC} "
PKGCONFDIR := "/usr/lib/pkgconfig"
