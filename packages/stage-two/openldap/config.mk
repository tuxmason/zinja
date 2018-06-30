PKGNAME := openldap
PKGVER := 2.4.45
PKGSRC := $(PKGNAME)-$(PKGVER).tgz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := ftp://ftp.openldap.org/pub/OpenLDAP/openldap-release/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-bdb=no \
	--enable-perl=no \
	--enable-ndb=no \
	--enable-hdb=no \
	--enable-crypt \
	--disable-debug \
	--enable-spasswd \
	--enable-modules \
	--enable-dynamic \
	--with-cyrus-sasl \
	--enable-overlays=mod \
	--enable-rlookups \
	--enable-backends=mod \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--libexecdir=/usr/lib \
	--host=$(TARGETARCH) \
	--localstatedir=/var \
	--with-yielding-select=yes \
	ac_cv_func_memcmp_working=yes

CC := "${CC}"
CXX := "${CXX}"

LDFLAGS := "-L$(SYSROOTDIR)/lib -L$(SYSROOTDIR)/usr/lib"
CFLAGS := "-D_GNU_SOURCE -fPIC -I$(SYSROOTDIR)/usr/include -I$(SYSROOTDIR)/usr/include/openssl"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
