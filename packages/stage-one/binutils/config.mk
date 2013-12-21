PKGNAME := binutils
PKGVER := 2.23.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=$(CROSSTOOLS) \
	--disable-nls \
	--disable-static \
	--disable-multilib \
	--host=$(HOSTARCH) \
	--target=$(TARGETARCH) \
	--with-sysroot=$(SYSROOTDIR) \
	--with-lib-path="$(SYSROOTDIR)/lib:$(SYSROOTDIR)/usr/lib"
AS := as
AR := ar
