PKGNAME := texinfo
PKGVER := 5.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr  \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)
CC := "${CC} "
CXX := "${CXX} "
LIBS := "-lpthread"
