PKGNAME := openssl
PKGVER := 1.0.2d
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := shared \
	linux-generic32 \
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
