PKGNAME := pkg-config-lite
PKGVER := 0.28-1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://sourceforge.net/projects/pkgconfiglite/files/$(PKGVER)/$(PKGSRC)
COPTS := --prefix=$(CROSSTOOLS) \
	--host=$(TARGETARCH) \
	--with-pc-path="$(SYSROOTDIR)/usr/lib/pkgconfig:$(SYSROOTDIR)/usr/share/pkgconfig"
