PKGNAME := gettext
PKGVER := 0.19.8.1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.gnu.org/gnu/$(PKGNAME)/$(PKGSRC)
COPTS := --prefix=/usr \
	--disable-java \
	--without-csharp \
	--disable-rpath \
	--enable-threads=posix \
	--host=$(TARGETARCH) \
	--build=$(BUILDARCH) \
	--with-sysroot=$(SYSROOTDIR) \
	--cache-file=$(PKGOBJDIR)/$(PKGNAME).cache
CC := "${CC} "
CXX := "${CXX} "
LIBS := "-lrt -lpthread -ldl -lm"
