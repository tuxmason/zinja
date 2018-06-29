PKGNAME := systemd
PKGVER := 234
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/musl/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)/musl
SRCURL := https://github.com/systemd/systemd/archive/v234.tar.gz
COPTS := --prefix=/usr \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--libexecdir=/usr/lib \
	--docdir=/usr/share/doc/systemd-234 \
	--with-rootprefix="" \
	--with-rootlibdir=/lib \
	--enable-split-usr \
	--disable-efi \
	--disable-lto \
	--disable-gnutls \
	--disable-libcryptsetup \
	--disable-gcrypt \
	--without-python \
	--enable-static=no \
	--without-python \
	--disable-sysusers \
	--disable-tests \
	--disable-selinux \
	--disable-firstboot \
	--disable-ldconfig \
	--disable-coredump \
	--disable-audit \
	--disable-smack \
	--disable-ima \
	--disable-myhostname \
	--disable-nss-systemd \
	--disable-resolved \
	--with-fallback-hostname=mugenjin \
	--with-default-dnssec=no \
	--with-kbd-loadkeys=/bin/loadkeys \
	--with-kbd-setfont=/bin/setfont \
	--with-dbuspolicydir=/etc/dbus-1/system.d \
	--with-dbussessionservicedir=/usr/share/dbus-1/services \
	--with-dbussystemservicedir=/usr/share/dbus-1/system-services \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache
CPPFLAGS := "-I$(SYSROOTDIR)/usr/include/nspr -I$(SYSROOTDIR)/usr/include/nss"
CFLAGS := "-D_GNU_SOURCE -DNO_LIBC_FTW"
KMOD_LIBS := -lkmod

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
