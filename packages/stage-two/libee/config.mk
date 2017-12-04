PKGNAME := libee
PKGVER := 0.4.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://www.libee.org/files/download/$(PKGSRC)
COPTS := --prefix=/usr \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache
CC := "${CC} "
CXX := "${CXX} "
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
