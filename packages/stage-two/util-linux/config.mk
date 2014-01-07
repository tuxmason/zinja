PKGNAME := util-linux
PKGVER := 2.23.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --enable-partx \
	--enable-write \
	--disable-wall \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-nls \
	--enable-raw \
	--with-ncurses \
	--disable-makeinstall-chown
CC := "${CC} "
