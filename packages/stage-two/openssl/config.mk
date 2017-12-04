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
	linux-x86_64 \
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
