PKGNAME := libXrender
PKGVER := 0.9.9
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-malloc0returnsnull

CC := "${CC} "
CXX := "${CXX} "
