PKGNAME := cracklib-dict
PKGVER := 20080507
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--disable-static \
	--without-python \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-default-dict=/lib/cracklib/pw_dict
CC := "${CC} "
CXX := "${CXX} "
