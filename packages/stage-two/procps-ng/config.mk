PKGNAME := procps-ng
PKGVER := 3.3.9
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--bindir=/bin \
	--sbindir=/sbin \
	--libdir=/usr/lib \
	--disable-kill \
	--disable-skill \
	--exec-prefix= \
	--mandir=/usr/share/man \
	--docdir=/usr/share/doc \
	--disable-w-from \
	--with-ncurses \
	--disable-rpath \
	--disable-static \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache
CC := "${CC} "
CXX := "${CXX} "
