PKGNAME := iptables
PKGVER := 1.6.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.bz2
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://netfilter.org/projects/$(PKGNAME)/files/$(PKGSRC)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--disable-nftables \
	--enable-libipq \
	--enable-nfsynproxy \
	--enable-bpf-compiler \
	--with-kernel=$(SYSROOTDIR)/usr

CC := "${CC} "
CXX := "${CXX} "
LDFLAGS := "-L$(SYSROOTDIR)/usr/lib -L$(SYSROOTDIR)/usr/lib"
