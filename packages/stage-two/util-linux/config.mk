PKGNAME := util-linux
PKGVER := 2.31
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.kernel.org/pub/linux/utils/util-linux/v$(PKGVER)/$(PKGSRC)
COPTS := --enable-partx \
	--enable-write \
	--disable-wall \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-nls \
	--enable-raw \
	--with-ncursesw \
	--disable-makeinstall-chown
CC := "${CC} "
