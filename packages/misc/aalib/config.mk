PKGNAME := aalib
PKGVER := 1.4.0
PKGSRC := $(PKGNAME)-1.4rc5.tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info

CC := "${CC} "
CXX := "${CXX} "
AR := "${AR} "
LD := "${LD} "
AS := "${AS} "

PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
