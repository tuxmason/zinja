PKGNAME := xorg-server
PKGVER := 1.17.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--enable-dmx \
	--enable-dri \
	--enable-dri2 \
	--enable-glamor \
	--disable-tslib \
	--enable-aiglx \
	--enable-kdrive \
	--sysconfdir=/etc \
	--enable-composite \
	--enable-config-udev \
	--disable-config-hal \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--enable-suid-wrapper \
	--disable-systemd-logind \
	--with-xkb-output=/var/lib/xkb

CC := "${CC} "
CXX := "${CXX} "
CFLAGS := "$$CFLAGS -D_GNU_SOURCE"
LDFLAGS := "$$LDFLAGS -Wl,-z,lazy"
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
CPPFLAGS := "-I$(SYSROOTDIR)/usr/include/libdrm"
