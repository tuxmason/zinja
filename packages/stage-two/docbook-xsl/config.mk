PKGNAME := docbook-xsl
PKGVER := 1.79.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDOC := $(PKGNAME)-doc-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://github.com/docbook/xslt10-stylesheets/releases/download/release/$(PKGVER)/$(PKGSRC)
COPTS :=

XSLDIR := "/usr/share/xsl/docbook"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
