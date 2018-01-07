PKGNAME := gcc
PKGVER := 7.2.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-stage1-obj
ifeq ($(ARCH),arm)
	PATCHLIST := $(PATCHDB)/$(PKGNAME)/musl/stage1.arm.txt
endif
ifeq ($(ARCH),x86_64)
	PATCHLIST := $(PATCHDB)/$(PKGNAME)/musl/stage1.x86_64.txt
endif
PATCHDIR := $(PATCHDB)/$(PKGNAME)/musl
SRCURL := https://ftp.gnu.org/gnu/gcc/$(PKGNAME)-$(PKGVER)/$(PKGSRC)
COPTS := --disable-shared \
	--disable-nls \
	--disable-static \
	--disable-threads \
	--disable-libitm \
	--disable-libssp \
	--disable-libgomp \
	--disable-multilib \
	--disable-libatomic \
	--disable-libmudflap \
	--disable-target-libiberty \
	--disable-target-zlib \
	--disable-libsanitizer \
	--disable-libquadmath \
	--disable-libvtv \
	--disable-libcilkrts \
	--disable-libstdc++-v3 \
	--enable-languages=c \
	--disable-decimal-float \
	--prefix=$(CROSSTOOLS) \
	--host=$(HOSTARCH) \
	--build=$(BUILDARCH) \
	--target=$(TARGETARCH) \
	--with-newlib \
	--without-headers \
	--with-system-zlib \
	--enable-linker-build-id \
	--with-sysroot=$(SYSROOTDIR) \
	--with-native-system-header-dir=$(SYSROOT)/usr/include \
	--with-local-prefix=$(SYSROOTDIR) \
	--with-gmp=$(CROSSTOOLS) \
	--with-mpc=$(CROSSTOOLS) \
	--with-mpfr=$(CROSSTOOLS)
AR := ar
LDFLAGS := -Wl,-rpath,/$(CROSSTOOLS)/lib
ifeq ($(ARCH),arm)
        COPTS := $(COPTS) --with-fpu=$(FPU) --with-float=$(FLOAT) --with-arch=$(ARCH_TYPE)
endif
