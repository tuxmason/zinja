PKGNAME := unrar
PKGVER := 5.6.8
PKGSRC := $(PKGNAME)src-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PKGOBJDIR-LIB := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-LIB-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://www.rarlab.com/rar/$(PKGSRC)
COPTS :=

CC := "${CC}"
CXX := "${CXX}"
AR := "${AR}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
