PKGNAME := libaio
PKGVER := 0.3.110
PKGSRC := $(PKGNAME)_$(PKGVER).orig.tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.debian.org/debian/pool/main/liba/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
CXX := "${CXX} "
