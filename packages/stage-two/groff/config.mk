PKGNAME := groff
PKGVER := 1.22.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnu.org/gnu/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--with-x=no \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)
CC := "${CC} "
CXX := "${CXX} "
PAGESIZE := A4
