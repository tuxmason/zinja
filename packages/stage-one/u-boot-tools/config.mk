PKGNAME := u-boot
PKGVER := odroidc-v2011.03
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PATCHLIST := $(PATCHDB)/u-boot/list.txt
PATCHDIR := $(PATCHDB)/u-boot
PKGOBJDIR := $(TCBUILDROOT)/u-boot-obj
HOSTCC := "gcc"
