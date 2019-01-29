PKGNAME := screen
PKGVER := 4.6.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://ftp.gnu.org/gnu/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-pam \
	--enable-telnet \
	--sysconfdir=/etc \
	--enable-colors256 \
	--with-pty-group=5 \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--with-socket-dir=/run/screen \
	--with-sys-screenrc=/etc/screenrc

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
