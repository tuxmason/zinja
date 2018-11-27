PKGNAME := linux
PKGVER := 4.9.66
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PATCHDIR := $(PATCHDB)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-kernel-obj
SRCURL := https://cdn.kernel.org/pub/linux/kernel/v4.x/$(PKGSRC)

ifeq ($(ARCH),arm)
	KARCH := $(ARCH)
	KIMAGE := zImage
	CONF := $(PATCHDIR)/kconfig.$(ARCH)
	PATCHLIST := $(PATCHDIR)/list.$(ARCH).txt
endif

ifeq ($(ARCH),aarch64)
	KARCH := arm64
	KIMAGE := Image
	CONF := $(PATCHDIR)/kconfig.$(ARCH)
	PATCHLIST := $(PATCHDIR)/list.$(ARCH).txt
endif

ifeq ($(ARCH),x86_64)
	KARCH := $(ARCH)
	KIMAGE := bzImage
	CONF := $(PATCHDIR)/kconfig.$(ARCH)
	PATCHLIST := $(PATCHDIR)/list.$(ARCH).txt
endif

PKGDIR := $(PKGDB)/$(PKGNAME)-$(PKGVER)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)-$(PKGVER)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
