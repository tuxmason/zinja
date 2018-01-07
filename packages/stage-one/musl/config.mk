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
endif
ifeq ($(ARCH),x86_64)
	CFLAGS := -m64
endif
