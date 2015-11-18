PKGNAME := flac
PKGVER := 1.3.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--with-pic \
	--enable-ogg \
	--enable-shared \
	--disable-sse \
	--disable-debug \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-xmms-plugin \
	--disable-thorough-tests \
	--disable-local-xmms-plugin \
	--with-ogg=$(SYSROOTDIR)/usr

CC := "${CC} "
CXX := "${CXX} "
AR := "${AR} "
LD := "${LD} "
AS := "${AS} "

PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
