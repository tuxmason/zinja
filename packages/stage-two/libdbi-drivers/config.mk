PKGNAME := libdbi-drivers
PKGVER := 0.9.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://sourceforge.net/projects/$(PKGNAME)/files/$(PKGNAME)/$(PKGNAME)-$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
	--with-sqlite3 \
	--with-mysql \
	--disable-docs \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--localstatedir=/var \
	--enable-mysql-threadsafe \
	--with-dbi-libdir=$(SYSROOTDIR)/usr/lib \
	--with-mysql-libdir=$(SYSROOTDIR)/usr/lib \
	--with-sqlite3-libdir=$(SYSROOTDIR)/usr/lib \
	--with-sqlite3-incdir=$(SYSROOTDIR)/usr/include \
	--with-dbi-incdir=$(SYSROOTDIR)/usr/include/dbi \
	--with-mysql-incdir=$(SYSROOTDIR)/usr/include/mysql

CC := "${CC} "
CXX := "${CXX} "
SQLITE3_LIBS := "-lsqlite3"
