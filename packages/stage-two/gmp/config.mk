PKGNAME := gmp
PKGVER := 5.1.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--enable-cxx \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)
HOSTCC := gcc
CC := "${CC} "
CXX := "${CXX} "
