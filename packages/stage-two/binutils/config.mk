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
	--enable-64-bit-bfd \
	--enable-gold=yes \
	--enable-threads \
	--enable-ld=default \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--target=$(TARGETARCH) \
	--with-system-zlib \
	--with-build-sysroot=$(SYSROOTDIR)
CC := "${CC} "
