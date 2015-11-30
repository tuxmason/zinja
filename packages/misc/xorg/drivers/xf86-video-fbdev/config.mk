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
CPPFLAGS := "-I$(SYSROOTDIR)/usr/include/libevdev-1.0"
