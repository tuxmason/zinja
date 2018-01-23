PKGNAME := gnutls
PKGVER := 3.6.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.gnupg.org/ftp/gcrypt/gnutls/v3.6/$(PKGSRC)
COPTS := --prefix=/usr \
	--disable-rpath \
	--disable-guile \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-openssl-compatibility \
	--with-libltdl-prefix=$(SYSROOTDIR)/usr \
	--with-libcrypto-prefix=$(SYSROOTDIR)/usr \
	--with-default-trust-store-pkcs11="pkcs11:" \
	--with-libreadline-prefix=$(SYSROOTDIR)/usr \
	--with-libunistring-prefix=$(SYSROOTDIR)/usr

CC := "${CC} "
CXX := "${CXX} "
LDFLAGS := "-L$(SYSROOTDIR)/lib -L$(SYSROOTDIR)/usr/lib"
