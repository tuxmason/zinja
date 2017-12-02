PKGNAME := gmp
PKGVER := 6.1.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnu.org/gnu/gmp/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-cxx \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)
HOSTCC := gcc
CC := "${CC} "
CXX := "${CXX} "
