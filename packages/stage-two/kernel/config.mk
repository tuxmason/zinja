PKGNAME := linux
PKGVER := 4.9.66
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PATCHLIST := $(PATCHDB)/kernel/list.txt
PATCHDIR := $(PATCHDB)/kernel
ifeq ($(ARCH),arm)
	CONF := $(PATCHDB)/kernel/kconfig.arm
	KIMAGE := zImage
endif
ifeq ($(ARCH),x86_64)
	CONF := $(PATCHDB)/kernel/kconfig.x86_64
	KIMAGE := bzImage
endif
PKGOBJDIR := $(TCBUILDROOT)/kernel-obj
SRCURL := https://cdn.kernel.org/pub/linux/kernel/v4.x/$(PKGSRC)
