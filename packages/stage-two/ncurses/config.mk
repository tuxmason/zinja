PKGNAME := ncurses
PKGVER := 5.9
PKGSRC := ncurses-5.9.tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-final-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--with-shared \
	--without-debug \
	--without-ada \
	--enable-pc-files \
	--enable-overwrite \
	--with-build-cc=gcc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-default-terminfo-dir=/usr/share/terminfo \
	--with-terminfo-dirs="/etc/terminfo:/usr/share/terminfo"
CC := "${CC} "
CXX := "${CXX} "
