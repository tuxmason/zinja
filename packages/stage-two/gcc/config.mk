PKGNAME := gcc
PKGVER := 7.2.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-target-obj
ifeq ($(ARCH),arm)
	PATCHLIST := $(PATCHDB)/$(PKGNAME)/musl/target.arm.txt
endif
ifeq ($(ARCH),$(filter $(ARCH),x86_64 aarch64))
	PATCHLIST := $(PATCHDB)/$(PKGNAME)/musl/target.x86_64.txt
endif
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

CC := "${CC}"
CXX := "${CXX}"

ifeq ($(ARCH),$(filter $(ARCH),arm aarch64))
	COPTS := $(COPTS) --with-fpu=$(FPU) --with-float=$(FLOAT) --with-arch=$(ARCH_TYPE)
	LA := libatomic.la,libgomp.la,libitm.la,libstdc++fs.la,libssp.la,libssp_nonshared.la,libstdc++.la,libsupc++.la
else
	LA := libatomic.la,libgomp.la,libitm.la,libcilkrts.la,libmpx.la,libmpxwrappers.la,libquadmath.la,libstdc++fs.la,libssp.la,libssp_nonshared.la,libstdc++.la,libsupc++.la
endif

ifeq ($(ARCH),aarch64)
	COPTS := $(COPTS) --with-arch=$(ARCH_TYPE)
endif

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
