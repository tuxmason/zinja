PKGNAME := bash
PKGVER := 4.4.12
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnu.org/gnu/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--bindir=/bin \
	--disable-nls \
	--with-curses \
	--without-bash-malloc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-history \
	--enable-readline \
	--with-installed-readline=$(SYSROOTDIR) \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache
CC := "${CC} "
CXX := "${CXX} "
