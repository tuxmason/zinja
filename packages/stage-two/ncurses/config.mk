PKGNAME := ncurses
PKGVER := 5.9
PKGSRC := ncurses-5.9.tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-tgt-obj
WPKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-tgt-wc-obj
NWPKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-tgt-nwc-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
WCOPTS := --enable-widec
NWCOPTS := --without-progs
COPTS := --prefix=/usr \
	--with-shared \
	--without-debug \
	--without-ada \
	--libdir=/lib \
	--enable-pc-files \
	--enable-overwrite \
	--with-build-cc=gcc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--without-cxx-binding \
	--with-pkg-config-libdir=/usr/lib/pkgconfig \
	--with-default-terminfo-dir=/usr/share/terminfo \
	--with-terminfo-dirs="/etc/terminfo:/usr/share/terminfo"
CC := "${CC} "
CXX := "${CXX} "
