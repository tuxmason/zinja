PKGNAME := acl
PKGVER := 2.2.52
PKGSRC := $(PKGNAME)-$(PKGVER).src.tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://download.savannah.gnu.org/releases/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--libdir=/lib \
	--disable-gettext \
	--libexecdir=/usr/lib \
	--mandir=/usr/share/man \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)
CC := "${CC} "
