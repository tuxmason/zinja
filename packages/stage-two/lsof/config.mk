PKGNAME := lsof
PKGVER := 4.91
PKGSRC := $(PKGNAME)_$(PKGVER)_src.tar
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)_$(PKGVER)_src
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://fossies.org/linux/misc/lsof_4.91.tar.bz2/lsof_4.91/lsof_4.91_src.tar

COPTS := -n linux

CC := "${CC}"
CXX := "${CXX}"

LSOF_AR := "${AR} cr"
LSOF_RANLIB := "${RANLIB}"
LSOF_INCLUDE := "$(SYSROOTDIR)/usr/include"

CFGL := "-L./lib -ltirpc"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
