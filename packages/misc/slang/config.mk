PKGNAME := slang
PKGVER := 2.2.4
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--with-readline=gnu \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-z=$(SYSROOTDIR)/usr \
	--with-png=$(SYSROOTDIR)/usr \
	--with-pcre=$(SYSROOTDIR)/usr

CC := "${CC} "
CXX := "${CXX} "
LIBS := -lncurses
