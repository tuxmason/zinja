PKGNAME := icu
PKGVER := 4c-59_1
PKGSRC := $(PKGNAME)$(PKGVER)-src.tgz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://download.icu-project.org/files/icu4c/59.1/$(PKGSRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--disable-samples \
	--disable-tests \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-cross-build=$(PKGSRCDIR)/source/host

CC := "${CC} "
CX := "${CXX} "
