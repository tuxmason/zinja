PKGNAME := libuv
PKGVER := 1.24.1
PKGSRC := $(PKGNAME)-v$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-v$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-v$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://dist.libuv.org/dist/v1.24.1/$(PKGSRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC}"
CXX := "${CXX}"

CFLAGS := "$$CFLAGS -D__USE_MISC"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
