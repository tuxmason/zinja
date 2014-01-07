PKGNAME := kbd
PKGVER := 2.0.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--disable-nls \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-libkeymap \
	--enable-optional-progs \
        --cache-file=$(PKGOBJDIR)/$(PKGNAME).cache
CC := "${CC} "
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
