PKGNAME := binutils
PKGVER := 2.23.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-final-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--disable-nls \
	--disable-werror \
	--disable-multilib \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--target=$(TARGETARCH) \
	--enable-shared \
	--with-build-sysroot=$(SYSROOTDIR)
CC := "${CC} "
