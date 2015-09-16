PKGNAME := linux
PKGVER := odroidc-3.10.y
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PATCHLIST := $(PATCHDB)/kernel/$(PKGNAME)-list.txt
PATCHDIR := $(PATCHDB)/kernel
CONF := $(PATCHDB)/kernel/kconfig.arm
PKGOBJDIR := $(TCBUILDROOT)/kernel-obj
