PKGNAME := gcc
PKGVER := 4.8.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-target-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/target.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
        --disable-nls \
        --disable-multilib \
        --disable-werror \
        --enable-c99 \
        --enable-long-long \
	--enable-libstdcxx-time \
	--enable-checking=release \
        --enable-languages=c,c++ \
        --build=$(BUILDARCH) \
        --host=$(TARGETARCH) \
        --target=$(TARGETARCH) \
        --with-fpu=$(FPU) \
        --with-float=$(FLOAT) \
        --with-arch=$(ARCH_TYPE) \
        --enable-linker-build-id \
        --with-system-zlib \
        --enable-threads=posix \
        --enable-__cxa_atexit \
        --libexecdir=/usr/lib \
        --libdir=/usr/lib
CC := "${CC} "
CXX := "${CXX} "
