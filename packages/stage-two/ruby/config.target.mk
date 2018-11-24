PKGNAME := ruby
PKGVER := 2.5.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
HOST_RUBY := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-host-ruby
TARGET_PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-target-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.target.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://cache.ruby-lang.org/pub/$(PKGNAME)/2.5/$(PKGSRC)

TARGET_COPTS := --prefix=/usr \
	--enable-shared \
	--disable-rpath \
	--disable-werror \
	--without-jemalloc \
	--disable-install-doc \
	--disable-install-rdoc \
	--disable-install-capi \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-install-static-library \
	--with-baseruby=$(HOST_RUBY)/bin/ruby \
	--cache-file=$(TARGET_PKGOBJDIR)/$(PKGNAME).cache

CFLAGS := "-I$(SYSROOTDIR)/usr/include -fno-omit-frame-pointer -fno-strict-aliasing"
CPPFLAGS := "-I$(SYSROOTDIR)/usr/include -fno-omit-frame-pointer -fno-strict-aliasing"

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
