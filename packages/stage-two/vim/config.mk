PKGNAME := vim
PKGVER := 8.0.586
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)80
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := ftp://ftp.vim.org/pub/vim/unix/$(PKGSRC)
COPTS := --prefix=/usr \
        --build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-multibyte \
	--enable-gui=no \
	--disable-gtktest \
	--disable-xim \
	--with-features=normal \
	--without-x \
	--disable-netbeans \
	--with-tlib=ncurses
CC := "${CC} "
CXX := "${CXX} "
