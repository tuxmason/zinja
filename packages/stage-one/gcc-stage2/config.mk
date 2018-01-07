PKGNAME := gcc
PKGVER := 7.2.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-stage2-obj
ifeq ($(ARCH),arm)
        PATCHLIST := $(PATCHDB)/$(PKGNAME)/musl/stage2.arm.txt
endif
ifeq ($(ARCH),x86_64)
        PATCHLIST := $(PATCHDB)/$(PKGNAME)/musl/stage2.x86_64.txt
endif
PATCHDIR := $(PATCHDB)/$(PKGNAME)/musl
SRCURL := https://ftp.gnu.org/gnu/gcc/$(PKGNAME)-$(PKGVER)/$(PKGSRC)
COPTS := --disable-nls \
	--disable-static \
	--disable-multilib \
	--disable-libsanitizer \
	--enable-shared \
	--enable-languages=c,c++ \
	--prefix=$(CROSSTOOLS) \
	--host=$(HOSTARCH) \
	--build=$(BUILDARCH) \
	--target=$(TARGETARCH) \
	--enable-linker-build-id \
	--with-native-system-header-dir=$(SYSROOT)/usr/include \
	--with-local-prefix=$(SYSROOTDIR) \
	--with-sysroot=$(SYSROOTDIR) \
	--with-gmp=$(CROSSTOOLS) \
	--with-mpc=$(CROSSTOOLS) \
	--with-mpfr=$(CROSSTOOLS) \
	--with-isl=$(CROSSTOOLS)
AR := ar
AS_FOR_TARGET := $(TARGETARCH)-as
LD_FOR_TARGET := $(TARGETARCH)-ld
LDFLAGS := -Wl,-rpath,/$(CROSSTOOLS)/lib
ifeq ($(ARCH),arm)
        COPTS := $(COPTS) --with-fpu=$(FPU) --with-float=$(FLOAT) --with-arch=$(ARCH_TYPE)
endif
