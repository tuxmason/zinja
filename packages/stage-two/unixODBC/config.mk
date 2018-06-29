PKGNAME := unixODBC
PKGVER := 2.3.5
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := ftp://ftp.unixodbc.org/pub/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-static \
	--enable-gui=no \
	--enable-drivers \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-drivers-conf \
	--sysconfdir=/etc/unixODBC

CC := "${CC}"
CXX := "${CXX}"

LDFLAGS := "-L$(SYSROOTDIR)/lib -L$(SYSROOTDIR)/usr/lib"

PKGDIR := $(PKGDB)/unixodbc
ORIGSRC := unixodbc_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
