PKGNAME := libidn2
PKGVER := 2.0.4
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnu.org/gnu/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--disable-rpath \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-libunistring-prefix=$(SYSROOTDIR)/usr

CC := "${CC} "
CXX := "${CXX} "
