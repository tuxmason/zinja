PKGNAME := p7zip
PKGVER := 16.02
PKGSRC := $(PKGNAME)_$(PKGVER)_src_all.tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)_$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://downloads.sourceforge.net/$(PKGNAME)/$(PKGSRC)
COPTS := 

CC := "${CC}"
CXX := "${CXX}"

ifeq ($(ARCH),arm)
	MK_FILE := makefile.linux_cross_arm
endif

ifeq ($(ARCH),aarch64)
	MK_FILE := makefile.linux_cross_aarch64
endif

ifeq ($(ARCH),x86_64)
	MK_FILE := makefile.linux_amd64_asm
endif

ifeq ($(ARCH),x86)
	MK_FILE := makefile.linux_x86_asm_gcc_4.X
endif

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
