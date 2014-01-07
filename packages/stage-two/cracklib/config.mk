PKGNAME := cracklib
PKGVER := 2.9.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
DICT := $(SRCDIR)/$(PKGNAME)-words-20080507.xz
COPTS := --prefix=/usr \
	--disable-static \
	--without-python \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-default-dict=/lib/cracklib/pw_dict
CC := "${CC} "
CXX := "${CXX} "
