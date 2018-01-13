PKGNAME := ipset
PKGVER := 6.35
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ipset.netfilter.org/$(PKGSRC)
COPTS := --prefix=/usr \
	--with-kmod=no \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-settype-modules \
	--with-settype-modules-list=all

CC := "${CC} "
CXX := "${CXX} "
LDFLAGS := "-L$(SYSROOTDIR)/usr/lib -L$(SYSROOTDIR)/usr/lib"
