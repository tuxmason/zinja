PKGNAME := libxcb
PKGVER := 1.12
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--enable-xinput \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache

CC := "${CC} "
CXX := "${CXX} "

XCBPROTO_XCBINCLUDEDIR := $(SYSROOTDIR)/usr/share/xcb
XCBPROTO_XCBPYTHONDIR := $(SYSROOTDIR)/usr/lib/python2.7/site-packages
