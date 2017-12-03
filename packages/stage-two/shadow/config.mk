PKGNAME := shadow
PKGVER := 4.5
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://github.com/shadow-maint/shadow/releases/download/$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--without-audit \
	--without-selinux \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-nscd=no \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache
CC := "${CC} "
CXX := "${CXX} "
