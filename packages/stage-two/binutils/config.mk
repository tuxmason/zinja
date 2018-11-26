PKGNAME := binutils
PKGVER := 2.29.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-final-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://ftp.gnu.org/gnu/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--disable-nls \
	--disable-werror \
	--disable-multilib \
	--enable-shared \
	--enable-plugins \
	--enable-gold=yes \
	--enable-threads \
	--enable-ld=default \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--target=$(TARGETARCH) \
	--with-system-zlib \
	--with-build-sysroot=$(SYSROOTDIR)

CC := "${CC}"
CXX := "${CXX}"

ifeq ($(ARCH),$(filter $(ARCH),x86_64 aarch64))
	COPTS := $(COPTS) --enable-64-bit-bfd
endif

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
