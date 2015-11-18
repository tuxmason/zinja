PKGNAME := libsamplerate
PKGVER := 0.1.8
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--disable-fftw \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH)

CC := "${CC} "
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
