PKGNAME := gamin
PKGVER := 0.1.10
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--without-python \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--libexecdir=/usr/sbin \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache

CC := "${CC} "
