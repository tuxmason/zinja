PKGNAME := polkit
PKGVER := 0.115
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.freedesktop.org/software/$(PKGNAME)/releases/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-shared \
	--enable-static \
	--sysconfdir=/etc \
	--disable-gtk-doc \
	--with-authfw=pam \
	--disable-examples \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--localstatedir=/var \
	--with-os-type=redhat \
	--enable-introspection=no \
	--enable-libsystemd-login=yes

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/xorg/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
