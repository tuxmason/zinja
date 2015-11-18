PKGNAME := glib
PKGVER := 2.46.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--disable-libelf \
	--enable-static \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-pcre=system \
	--cache-file=$(PKGOBJDIR)/glib2.cache

CC := "${CC} "
