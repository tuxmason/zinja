PKGNAME := syslog-ng
PKGVER := 3.7.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
        --build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-python \
	--sysconfdir=/etc/syslog-ng \
	--without-libmongo-client \
	--localstatedir=/var/lib/syslog-ng

CC := "${CC} "
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
