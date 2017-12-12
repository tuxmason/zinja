PKGNAME := pcre
PKGVER := 8.41
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://downloads.sourceforge.net/pcre/$(PKGSRC)
COPTS := --prefix=/usr \
	--enable-pcre16 \
	--enable-pcre32 \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-pcregrep-libz \
	--enable-pcregrep-libbz2 \
	--enable-unicode-properties \
	--enable-pcretest-libreadline

CC := "${CC} "
CXX := "${CXX} "
