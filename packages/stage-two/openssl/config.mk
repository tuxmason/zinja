PKGNAME := openssl
PKGVER := 1.1.0g
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://openssl.org/source/$(PKGSRC)
COPTS := shared \
	-DOPENSSL_NO_ASYNC \
	zlib-dynamic \
	--openssldir=/etc/ssl \
	--prefix=/usr \
	no-idea \
	no-rc5

CC := "${CC}"
AR := "${AR}"
AS := "${AS}"
LD := "${LD}"
RANLIB := "${RANLIB}"

CROSS := $(TARGETARCH)

ifeq ($(ARCH),arm)
        COPTS := $(COPTS) linux-generic32
endif
ifeq ($(ARCH),x86_64)
        COPTS := $(COPTS) linux-x86_64
endif
