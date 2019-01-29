PKGNAME := wireless_tools
DEBNAME := wireless-tools
PKGVER := 30
PKGSRC := $(PKGNAME).$(PKGVER).pre9.tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME).$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(DEBNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(DEBNAME)
SRCURL := https://hewlettpackard.github.io/wireless-tools/$(PKGSRC)

COPTS :=

CC := "${CC}"
CXX := "${CXX}"
AR := "${AR}"
LD := "${LD}"
RANLIB := "${RANLIB}"

PKGDIR := $(PKGDB)/$(DEBNAME)
ORIGSRC := $(DEBNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(DEBNAME)
DISTRIBSRC := $(PKGROOT)/$(DEBNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
