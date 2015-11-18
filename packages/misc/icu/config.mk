PKGNAME := icu
PKGVER := 4c-56_1
PKGSRC := $(PKGNAME)$(PKGVER)-src.tgz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--disable-samples \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
CX := "${CXX} "
