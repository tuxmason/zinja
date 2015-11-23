PKGNAME := libomxil-bellagio
PKGVER := 0.9.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--enable-shared \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--docdir=$(SYSROOTDIR)/usr/share/doc \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache

CC := "${CC} "
CXX := "${CXX} "
