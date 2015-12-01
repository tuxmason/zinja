PKGNAME := xf86-video-fbdev
PKGVER := 0.4.4
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--enable-static \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) 

CC := "${CC} "
CXX := "${CXX} "
LDFLAGS := "$$LDFLAGS -Wl,-z,lazy"
CPPFLAGS := "-I$(SYSROOTDIR)/usr/include/libevdev-1.0 -I$(SYSROOTDIR)/usr/include/X11"
XORG_CFLAGS := "-fvisibility=hidden -I$(SYSROOTDIR)/usr/include/libdrm -I$(SYSROOTDIR)/usr/include/xorg -I$(SYSROOTDIR)/usr/include/pixman-1 -I$(SYSROOTDIR)/usr/include/X11/dri"
