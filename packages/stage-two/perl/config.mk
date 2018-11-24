PKGNAME := perl
PKGVER := 5.26.1
CROSSVER := 1.1.7
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PERLCROSS := $(PKGNAME)-cross-$(CROSSVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://www.cpan.org/src/5.0/$(PKGSRC)
CROSSURL := https://github.com/arsv/perl-cross/releases/download/$(CROSSVER)/$(PERLCROSS)
COPTS := --prefix=/usr \
	-Duselargefiles \
	-Dcf_by='Zinja OS' \
	-Dvendorprefix=/usr \
	--target=$(TARGETARCH) \
	--sysroot=$(SYSROOTDIR) \
	-Duseshrplib -Dusethreads \
	-Dprivlib=/usr/share/perl5/core_perl \
	-Darchlib=/usr/lib/perl5/core_perl \
	-Dsitelib=/usr/share/perl5/site_perl \
	-Dsitearch=/usr/lib/perl5/site_perl \
	-Dvendorlib=/usr/share/perl5/vendor_perl \
	-Dvendorarch=/usr/lib/perl5/vendor_perl

PKGDIR := $(PKGDB)/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
