PKGNAME := dejavu-sans-ttf
PKGVER := 2.37
PKGSRC := $(PKGNAME)-$(PKGVER).zip
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://sourceforge.net/projects/$(PKGNAME)/files/$(PKGNAME)/$(PKGVER)/$(PKGSRC)