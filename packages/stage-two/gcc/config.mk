PKGNAME := gcc
PKGVER := 7.2.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-target-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/musl/target.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)/musl
SRCURL := https://ftp.gnu.org/gnu/gcc/$(PKGNAME)-$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
        --disable-nls \
        --disable-multilib \
        --disable-werror \
	--disable-libsanitizer \
	--enable-install-libiberty \
        --enable-languages=c,c++ \
        --build=$(BUILDARCH) \
        --host=$(TARGETARCH) \
        --target=$(TARGETARCH) \
        --enable-linker-build-id \
        --with-system-zlib \
        --libexecdir=/usr/lib
CC := "${CC} "
CXX := "${CXX} "
