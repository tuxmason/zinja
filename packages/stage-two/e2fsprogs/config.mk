PKGNAME := e2fsprogs
PKGVER := 1.43.7
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://downloads.sourceforge.net/project/e2fsprogs/e2fsprogs/v$(PKGVER)/$(PKGSRC)
COPTS := --prefix=/usr \
	--with-root-prefix="" \
	--enable-elf-shlibs \
	--disable-libblkid \
	--disable-libuuid \
	--disable-fsck \
	--disable-uuidd \
	--disable-nls \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
CXX := "${CXX} "
