PKGNAME := vim
PKGVER :=7.4
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)74
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
        --build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-multibyte \
	--enable-gui=no \
	--disable-gtktest \
	--disable-xim \
	--with-features=normal \
	--disable-gpm \
	--without-x \
	--disable-netbeans \
	--with-tlib=ncurses
CC := "${CC} "
CXX := "${CXX} "
