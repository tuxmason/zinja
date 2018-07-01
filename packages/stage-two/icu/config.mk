PKGNAME := icu
PKGVER := 4c-59
PKGSRC := $(PKGNAME)$(PKGVER)_1-src.tgz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)$(PKGVER)_1
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)_1-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://download.icu-project.org/files/icu4c/59.1/$(PKGSRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--disable-samples \
	--disable-tests \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-cross-build=$(PKGSRCDIR)/source/host

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)_1
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
