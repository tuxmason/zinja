PKGNAME := speex
PKGVER := 1.2rc2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--enable-binaries \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
