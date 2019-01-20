PKGNAME := LVM2
DEBNAME := lvm2
PKGVER := 2.03.01
PKGSRC := $(PKGNAME).$(PKGVER).tgz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME).$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(DEBNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(DEBNAME)
SRCURL := https://sourceware.org/pub/$(DEBNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--exec-prefix= \
	--enable-cmdlib \
	--enable-dmeventd \
	--enable-udev_sync \
	--enable-pkgconfig \
	--with-confdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-thin=internal \
	--with-cache=internal \
	--with-thin-check= \
	--with-thin-dump= \
	--with-thin-repair= \
	--with-thin-restore= \
	--with-cache-check= \
	--with-cache-dump= \
	--with-cache-repair= \
	--with-cache-restore= \
	--with-default-pid-dir=/run \
	--with-default-dm-run-dir=/run \
	--with-default-run-dir=/run/lvm \
	--with-tmpfilesdir=/usr/lib/tmpfiles.d \
	--with-default-locking-dir=/run/lock/lvm \
	--cache-file=$(PKGOBJDIR)/$(DEBNAME).cache \
	--with-systemdsystemunitdir=/lib/systemd/system

CC := "${CC}"
CXX := "${CXX}"

PKGDIR := $(PKGDB)/$(DEBNAME)
ORIGSRC := $(DEBNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
