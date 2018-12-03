PKGNAME := boost
PKGVER := 1_68_0
DEBVER := 1-68-0
PKGSRC := $(PKGNAME)_$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)_$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://dl.bintray.com/boostorg/release/1.68.0/source/$(PKGSRC)

BOOTSTRAP_OPTS = --prefix=/usr \
		 --with-python-root=$(SYSROOTDIR)

B2_OPTS = threading=multi \
	  link=shared \
	  toolset=gcc-arm \
	  target-os=linux \
	  variant=release \
	  --user-config=user-config.jam

ifeq ($(ARCH),$(filter $(ARCH),arm aarch64))
	PROC := arm
endif

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(DEBVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(DEBVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
