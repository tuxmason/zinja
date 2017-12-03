PKGNAME := procps-ng
PKGVER := 3.3.12
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://sourceforge.net/projects/procps-ng/files/Production/$(PKGSRC)
COPTS := --prefix=/usr \
	--bindir=/bin \
	--sbindir=/sbin \
	--libdir=/usr/lib \
	--disable-kill \
	--exec-prefix= \
	--mandir=/usr/share/man \
	--docdir=/usr/share/doc \
	--with-ncurses \
	--disable-rpath \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache
CC := "${CC} "
CXX := "${CXX} "
