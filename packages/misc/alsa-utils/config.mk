PKGNAME := alsa-utils
PKGVER := 1.1.0
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--disable-bat \
	--disable-xmlto \
	--disable-alsaconf \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-curses=ncursesw \
	--with-systemdsystemunitdir=/lib/systemd/system

CC := "${CC} "
LIBS := "-lintl"
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
