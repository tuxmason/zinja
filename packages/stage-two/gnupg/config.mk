PKGNAME := gnupg
PKGVER := 2.2.4
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.gnupg.org/ftp/gcrypt/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-g13 \
	--sysconfdir=/etc \
	--with-capabilities \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-symcryptrun \
	--enable-maintainer-mode \
	--with-ksba-prefix=$(SYSROOTDIR)/usr \
	--with-npth-prefix=$(SYSROOTDIR)/usr \
	--with-libgcrypt-prefix=$(SYSROOTDIR)/usr \
	--with-gpg-error-prefix=$(SYSROOTDIR)/usr \
	--with-libassuan-prefix=$(SYSROOTDIR)/usr \
	--docdir=/usr/share/doc/$(PKGNAME)-$(PKGVER)

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
