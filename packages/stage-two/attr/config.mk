PKGNAME := attr
PKGVER := 2.4.47
PKGSRC := $(PKGNAME)-$(PKGVER).src.tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://download.savannah.gnu.org/releases/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/ \
	--exec-prefix=/ \
	--sbindir=/bin \
	--bindir=/usr/bin \
	--libdir=/lib \
	--disable-gettext \
	--libexecdir=/usr/lib \
	--includedir=/usr/include \
	--mandir=/usr/share/man \
	--datadir=/usr/share \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
