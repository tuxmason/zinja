PKGNAME := squashfs
PKGVER := 4.3
PKGSRC := $(PKGNAME)$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)-tools/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)-tools
SRCURL := https://sourceforge.net/projects/squashfs/files/squashfs/squashfs4.3/$(PKGSRC)
COPTS := 

CC := "${CC}"
CXX := "${CXX}"

CFLAGS := "-std=gnu89"

PKGDIR := $(PKGDB)/$(PKGNAME)-tools
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)-tools
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
