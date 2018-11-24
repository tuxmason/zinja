PKGNAME := ruby
PKGVER := 2.5.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
HOST_RUBY := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-host-ruby
HOST_PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-host-obj
TARGET_PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-target-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.host.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://cache.ruby-lang.org/pub/$(PKGNAME)/2.5/$(PKGSRC)

HOST_COPTS := --prefix=$(HOST_RUBY) \
	--disable-werror \
	--disable-dtrace \
	--enable-shared \
	--enable-load-relative \
	--disable-install-doc \
	--disable-install-rdoc \
	--disable-install-capi \
	--disable-versioned-paths
