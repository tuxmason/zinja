PKGNAME := libevent
PKGVER := 2.1.8
PKGSRC := $(PKGNAME)-$(PKGVER)-stable.tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-stable
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-stable-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/$(PKGSRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
CXX := "${CXX} "
