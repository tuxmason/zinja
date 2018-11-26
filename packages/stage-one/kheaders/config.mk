PKGNAME := linux
PKGVER := 4.9.66
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PATCHLIST := $(PATCHDB)/kheaders/list.txt
PATCHDIR := $(PATCHDB)/kheaders
PKGOBJDIR := $(TCBUILDROOT)/kheaders-obj

PKGDIR := $(PKGDB)/$(PKGNAME)-headers
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg

ifeq ($(ARCH),aarch64)
	KARCH := arm64
else
	KARCH := $(ARCH)
endif
