PKGNAME := musl
PKGVER := 1.1.20
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
	LINKER := ld-musl-$(ARCH)hf.so.1
	LIBC := libc.musl-$(ARCH)hf.so.1
	LDFLAGS := "-Wl,-soname,$(LIBC)"
endif

ifeq ($(ARCH),x86_64)
	CFLAGS := -m64
	LINKER := ld-musl-$(ARCH).so.1
	LIBC := libc.musl-$(ARCH).so.1
	LDFLAGS := "-Wl,-soname,$(LIBC)"
endif

ifeq ($(ARCH),aarch64)
	CFLAGS :=
	LINKER := ld-musl-$(ARCH).so.1
	LIBC := libc.musl-$(ARCH).so.1
	LDFLAGS := "-Wl,-soname,$(LIBC)"
endif

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.gz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
