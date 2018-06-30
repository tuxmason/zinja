PKGNAME := ncurses
PKGVER := 6.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-tgt-obj
WPKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-tgt-wc-obj
NWPKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-tgt-nwc-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnu.org/gnu/$(PKGNAME)/$(PKGSRC)
WCOPTS := --enable-widec
NWCOPTS := --without-progs \
	--without-cxx-binding \
	--with-abi-version=5
COPTS := --prefix=/usr \
	--without-ada \
	--with-shared \
	--without-debug \
	--libdir=/lib \
	--enable-pc-files \
	--enable-overwrite \
	--with-build-cc=gcc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-pkg-config-libdir=/usr/lib/pkgconfig \
	--with-default-terminfo-dir=/usr/share/terminfo \
	--with-terminfo-dirs="/etc/terminfo:/usr/share/terminfo"

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
