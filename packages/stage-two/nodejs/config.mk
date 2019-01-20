PKGNAME := node
PKGVER := 8.15.0
PKGSRC := $(PKGNAME)-v$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-v$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-v$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)js/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)js
SRCURL := https://nodejs.org/dist/v$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
	--shared-zlib \
	--shared-cares \
	--shared-libuv \
	--dest-os=linux \
	--shared-openssl \
	--shared-nghttp2 \
	--without-snapshot \
	--shared-http-parser \
	--with-intl=system-icu

CC := "${CC}"
CXX := "${CXX}"

AR := "${AR}"
RANLIB := "${RANLIB}"

LD := $(CXX)

ifeq ($(ARCH),x86_64)
	COPTS := $(COPTS) --dest-cpu=x64
endif

ifeq ($(ARCH),aarch64)
	COPTS := $(COPTS) --dest-cpu=arm64
endif

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
