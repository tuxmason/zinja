PKGNAME := Python
PKGVER := 2.7.14
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.python.org/ftp/python/$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
	--disable-tk \
	--enable-ipv6 \
	--with-threads \
	--enable-shared \
	--with-system-ffi \
	--with-expat=system \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-ensurepip=yes \
	--enable-unicode=ucs4 \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache

CC := "${CC} "
CXX := "${CXX} "
