PKGNAME := linux
PKGVER := 3.10.20
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PATCHLIST := $(PATCHDB)/kernel/list.txt
PATCHDIR := $(PATCHDB)/kernel
CONF := $(PATCHDB)/kernel/kconfig.arm
PKGOBJDIR := $(TCBUILDROOT)/kernel-obj
