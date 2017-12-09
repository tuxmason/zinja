PKGNAME := openssh
PKGVER := 7.6p1
PKGSRC := $(PKGNAME)-$(PKGVER).tar.gz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := http://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/$(PKGSRC)
COPTS := --prefix=/usr \
	--with-pam \
	--without-pie \
	--with-libedit \
	--disable-wtmp \
	--disable-strip \
	--with-ssl-engine \
	--with-md5-passwords \
	--sysconfdir=/etc/ssh \
        --build=$(BUILDARCH) \
	--host=$(TARGETARCH) \
	--libexecdir=/usr/sbin \
	--with-privsep-path=/var/lib/sshd \
	--with-default-path="/bin:/usr/bin" \
	--with-superuser-path="/sbin:/bin:/usr/sbin:/usr/bin"

CC := "${CC}"
CFLAGS := "-D__FILE_OFFSET_BITS=64"
RANLIB := "${RANLIB}"
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
