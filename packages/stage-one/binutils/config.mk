PKGNAME := binutils
PKGVER := 2.29.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://ftp.gnu.org/gnu/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=$(CROSSTOOLS) \
	--disable-nls \
	--disable-static \
	--disable-multilib \
	--enable-gold=yes \
	--enable-threads \
	--disable-werror \
	--host=$(HOSTARCH) \
	--target=$(TARGETARCH) \
	--with-sysroot=$(SYSROOTDIR) \
	--with-lib-path="$(SYSROOTDIR)/lib:$(SYSROOTDIR)/usr/lib"
AS := as
AR := ar
ifeq ($(ARCH),$(filter $(ARCH),x86_64 aarch64))
	COPTS := $(COPTS) --enable-64-bit-bfd
endif
