PKGNAME := util-linux
PKGVER := 2.31
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-ext-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.kernel.org/pub/linux/utils/util-linux/v$(PKGVER)/$(PKGSRC)
COPTS := --enable-partx \
	--enable-write \
	--disable-wall \
	--with-systemd \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-nls \
	--enable-raw \
	--with-ncursesw \
	--disable-login \
	--disable-setpriv \
	--disable-su \
	--disable-nologin \
	--disable-chfn-chsh \
	--with-sysroot=$(SYSROOTDIR) \
	--disable-makeinstall-chown

CC := "${CC}"
CXX := "${CXX}"

LDFLAGS := "-L$(SYSROOTDIR)/lib -L$(SYSROOTDIR)/usr/lib"

PKGDIR := $(PKGDB)/$(PKGNAME)-ext
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)-ext
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
