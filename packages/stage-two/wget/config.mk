PKGNAME := wget
PKGVER := 1.19.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnu.org/gnu/$(PKGNAME)/$(PKGSRC) 
COPTS := --prefix=/usr \
	--with-ssl=openssl \
	--host=$(TARGETARCH) \
	--build=$(BUILDARCH) \
	--sysconfdir=/etc/wget

CC := "${CC} "
