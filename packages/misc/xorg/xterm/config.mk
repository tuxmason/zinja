PKGNAME := xterm
PKGVER := 320
PKGSRC := $(PKGNAME)-$(PKGVER).tgz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--with-app-defaults=/etc/X11/app-defaults

CC := "${CC} "
CXX := "${CXX} "
TERMINFO := "/usr/share/terminfo"
