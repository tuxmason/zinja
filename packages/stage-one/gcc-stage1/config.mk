PKGNAME := gcc
PKGVER := 4.8.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-stage1-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/stage1.arm.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
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
	--enable-languages=c \
	--enable-checking=release \
	--disable-decimal-float \
	--prefix=$(CROSSTOOLS) \
	--host=$(HOSTARCH) \
	--build=$(BUILDARCH) \
	--target=$(TARGETARCH) \
	--with-newlib \
	--without-headers \
	--with-system-zlib \
	--with-fpu=$(FPU) \
	--with-float=$(FLOAT) \
	--with-arch=$(ARCH_TYPE) \
	--enable-linker-build-id \
	--with-sysroot=$(SYSROOTDIR) \
	--with-local-prefix=$(SYSROOTDIR) \
	--with-gmp=$(CROSSTOOLS) \
	--with-mpc=$(CROSSTOOLS) \
	--with-mpfr=$(CROSSTOOLS)
AR := ar
LDFLAGS := -Wl,-rpath,/$(CROSSTOOLS)/lib
