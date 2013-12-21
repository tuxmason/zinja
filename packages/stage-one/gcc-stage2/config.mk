PKGNAME := gcc
PKGVER := 4.8.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-stage2-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/stage2.arm.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --disable-nls \
	--disable-static \
	--disable-multilib \
	--enable-shared \
	--enable-__cxa_atexit \
	--enable-c99 \
	--enable-long-long \
	--enable-libstdcxx-time \
	--enable-threads=posix \
	--enable-languages=c,c++ \
	--enable-checking=release \
	--prefix=$(CROSSTOOLS) \
	--host=$(HOSTARCH) \
	--build=$(BUILDARCH) \
	--target=$(TARGETARCH) \
	--with-fpu=$(FPU) \
	--with-float=$(FLOAT) \
	--with-arch=$(ARCH_TYPE) \
	--enable-linker-build-id \
	--with-sysroot=$(SYSROOTDIR) \
	--with-gmp=$(CROSSTOOLS) \
	--with-mpc=$(CROSSTOOLS) \
	--with-mpfr=$(CROSSTOOLS)
AR := ar
AS_FOR_TARGET := $(TARGETARCH)-as
LD_FOR_TARGET := $(TARGETARCH)-ld
LDFLAGS := -Wl,-rpath,/$(CROSSTOOLS)/lib
