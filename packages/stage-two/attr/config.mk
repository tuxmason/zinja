PKGNAME := attr
PKGVER := 2.4.47
PKGSRC := $(PKGNAME)-$(PKGVER).src.tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
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
CC := "${CC} "
