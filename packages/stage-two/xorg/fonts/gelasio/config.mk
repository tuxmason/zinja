PKGNAME := gelasio
PKGVER := 4d610887ff4d445cbc639aae7828d139
PKGSRC := $(PKGNAME).zip
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://fontlibrary.org/assets/downloads/$(PKGNAME)/$(PKGVER)/$(PKGSRC)