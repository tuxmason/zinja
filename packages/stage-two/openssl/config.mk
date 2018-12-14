PKGNAME := openssl
PKGVER := 1.1.0g
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://openssl.org/source/$(PKGSRC)
COPTS := shared \
	zlib-dynamic \
	--libdir=lib \
	--prefix=/usr \
	-DOPENSSL_NO_ASYNC \
	--openssldir=/etc/ssl

CC := "${CC}"
AR := "${AR}"
AS := "${AS}"
LD := "${LD}"
RANLIB := "${RANLIB}"

CROSS := $(TARGETARCH)

ifeq ($(ARCH),arm)
        COPTS := $(COPTS) linux-generic32
endif
ifeq ($(ARCH),aarch64)
        COPTS := $(COPTS) linux-aarch64 no-afalgeng
endif
ifeq ($(ARCH),x86_64)
        COPTS := $(COPTS) linux-x86_64
endif

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
