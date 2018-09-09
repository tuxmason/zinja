PKGNAME := musl
PKGVER := 1.1.18
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.musl-libc.org/releases/$(PKGSRC)
COPTS := CROSS_COMPILE=$(TARGETARCH)- \
	--prefix=/ \
	--enable-shared \
	--target=$(TARGETARCH)
ifeq ($(ARCH),arm)
	CFLAGS :=
	LINKER := ld-musl-armhf.so.1
endif
ifeq ($(ARCH),x86_64)
	CFLAGS := -m64
	LINKER := ld-musl-x86_64.so.1
endif

LDFLAGS := "-Wl,-soname,libc.so"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.gz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
