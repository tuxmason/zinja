PKGNAME := tar
PKGVER := 1.27.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--bindir=/bin \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--libexecdir=/usr/sbin \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache
CC := "${CC} "
