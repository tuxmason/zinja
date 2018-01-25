#include general config file
include ../../conf/environment.mk
include ../../conf/shell-env.mk

all: targetfs

targetfs: fhs.o sysconfig.o m4.o gmp.o mpfr.o mpc.o isl.o zlib.o flex.o bison.o binutils.o gcc.o \
	libffi.o attr.o acl.o libcap.o sed.o pkg-config-lite.o ncurses.o check.o cracklib.o \
	cracklib-dict.o linux-pam.o shadow.o util-linux.o procps-ng.o e2fsprogs.o coreutils.o \
	iana-etc.o libtool.o bzip2.o readline.o autoconf.o automake.o bash.o bc.o \
	diffutils.o file.o gawk.o findutils.o gettext.o gperf.o grep.o groff.o less.o gzip.o \
	inetutils.o net-tools.o kbd.o libpipeline.o make.o xz.o elfutils.o expat.o intltool.o \
	kmod.o patch.o psmisc.o systemd.o dbus.o lzo.o lzip.o lz4.o tar.o texinfo.o util-linux.o \
	gpm.o vim.o grub.o libestr.o libee.o json-c.o libmicrohttpd.o openssl.o curl.o libedit.o \
	openssh.o pcre.o glib2.o wget.o kernel.o libaio.o libevent.o libusb.o libusb-compat.o \
	usbutils.o icu.o sqlite3.o libxml2.o jansson.o libnl.o libical.o bluez.o libpcap.o libmnl.o libnftnl.o \
	libnfnetlink.o libnetfilter_acct.o libnetfilter_log.o libnetfilter_queue.o libnetfilter_conntrack.o \
	libnetfilter_cttimeout.o libnetfilter_cthelper.o ipset.o iptables.o nftables.o iproute2.o \
	zeromq.o msgpack.o snappy.o mariadb.o libdbi.o libdbi-drivers.o syslog-ng.o ulogd.o

#============== [ targetfs packages ] ========================================================
fhs.o:
	@echo "FHS started $(shell date -R) "
	(make -C fhs 2>&1 | tee $(PKGLOGDIR)/fhs.log && exit $$PIPESTATUS)
	@echo "FHS finished $(shell date -R) "

gmp.o:
	@echo "GMP started $(shell date -R) "
	(make -C gmp 2>&1 | tee $(PKGLOGDIR)/gmp.log && exit $$PIPESTATUS)
	@echo "GMP finished $(shell date -R) "

mpfr.o:
	@echo "MPFR started $(shell date -R) "
	(make -C mpfr 2>&1 | tee $(PKGLOGDIR)/mpfr.log && exit $$PIPESTATUS)
	@echo "MPFR finished $(shell date -R) "

mpc.o:
	@echo "MPC started $(shell date -R) "
	(make -C mpc 2>&1 | tee $(PKGLOGDIR)/mpc.log && exit $$PIPESTATUS)
	@echo "MPC finished $(shell date -R) "

isl.o:
	@echo "isl started $(shell date -R) "
	(make -C isl 2>&1 | tee $(PKGLOGDIR)/isl.log && exit $$PIPESTATUS)
	@echo "isl finished $(shell date -R) "

zlib.o:
	@echo "Zlib started $(shell date -R) "
	(make -C zlib 2>&1 | tee $(PKGLOGDIR)/zlib.log && exit $$PIPESTATUS)
	@echo "Zlib finished $(shell date -R) "

binutils.o:
	@echo "Binutils started $(shell date -R) "
	(make -C binutils 2>&1 | tee $(PKGLOGDIR)/binutils.log && exit $$PIPESTATUS)
	@echo "Binutils finished $(shell date -R) "

gcc.o:
	@echo "GCC started $(shell date -R) "
	(make -C gcc 2>&1 | tee $(PKGLOGDIR)/gcc.log && exit $$PIPESTATUS)
	@echo "GCC finished $(shell date -R) "

sed.o:
	@echo "Sed started $(shell date -R) "
	(make -C sed 2>&1 | tee $(PKGLOGDIR)/sed.log && exit $$PIPESTATUS)
	@echo "Sed finished $(shell date -R) "

libffi.o:
	@echo "Libffi started $(shell date -R) "
	(make -C libffi 2>&1 | tee $(PKGLOGDIR)/libffi.log && exit $$PIPESTATUS)
	@echo "Libffi finished $(shell date -R) "

gpm.o:
	@echo "gpm started $(shell date -R) "
	(make -C gpm 2>&1 | tee $(PKGLOGDIR)/gpm.log && exit $$PIPESTATUS)
	@echo "gpm finished $(shell date -R) "

ncurses.o:
	@echo "Ncurses started $(shell date -R) "
	(make -C ncurses 2>&1 | tee $(PKGLOGDIR)/ncurses.log && exit $$PIPESTATUS)
	@echo "Ncurses finished $(shell date -R) "

pkg-config-lite.o:
	@echo "Pkg-config-lite started $(shell date -R) "
	(make -C pkg-config-lite 2>&1 | tee $(PKGLOGDIR)/pkg-config-lite.log && exit $$PIPESTATUS)
	@echo "Pkg-config-lite finished $(shell date -R) "

check.o:
	@echo "Check started $(shell date -R) "
	(make -C check 2>&1 | tee $(PKGLOGDIR)/check.log && exit $$PIPESTATUS)
	@echo "Check finished $(shell date -R) "

attr.o:
	@echo "Attr started $(shell date -R) "
	(make -C attr 2>&1 | tee $(PKGLOGDIR)/attr.log && exit $$PIPESTATUS)
	@echo "Attr finished $(shell date -R) "

acl.o:
	@echo "Acl started $(shell date -R) "
	(make -C acl 2>&1 | tee $(PKGLOGDIR)/acl.log && exit $$PIPESTATUS)
	@echo "Acl finished $(shell date -R) "

libcap.o:
	@echo "Libcap started $(shell date -R) "
	(make -C libcap 2>&1 | tee $(PKGLOGDIR)/libcap.log && exit $$PIPESTATUS)
	@echo "Libcap finished $(shell date -R) "

util-linux.o:
	@echo "Util-linux started $(shell date -R) "
	(make -C util-linux 2>&1 | tee $(PKGLOGDIR)/util-linux.log && exit $$PIPESTATUS)
	@echo "Util-linux finished $(shell date -R) "

procps-ng.o:
	@echo "Procps-ng started $(shell date -R) "
	(make -C procps-ng 2>&1 | tee $(PKGLOGDIR)/procps-ng.log && exit $$PIPESTATUS)
	@echo "Procps-ng finished $(shell date -R) "

e2fsprogs.o:
	@echo "E2fsprogs started $(shell date -R) "
	(make -C e2fsprogs 2>&1 | tee $(PKGLOGDIR)/e2fsprogs.log && exit $$PIPESTATUS)
	@echo "E2fsprogs finished $(shell date -R) "

cracklib.o:
	@echo "Cracklib started $(shell date -R) "
	(make -C cracklib 2>&1 | tee $(PKGLOGDIR)/cracklib.log && exit $$PIPESTATUS)
	@echo "Cracklib finished $(shell date -R) "

cracklib-dict.o:
	@echo "Cracklib-dict started $(shell date -R) "
	(make -C cracklib-dict 2>&1 | tee $(PKGLOGDIR)/cracklib-dict.log && exit $$PIPESTATUS)
	@echo "Cracklib-dict finished $(shell date -R) "

m4.o:
	@echo "M4 started $(shell date -R) "
	(make -C m4 2>&1 | tee $(PKGLOGDIR)/m4.log && exit $$PIPESTATUS)
	@echo "M4 finished $(shell date -R) "

bison.o:
	@echo "Bison started $(shell date -R) "
	(make -C bison 2>&1 | tee $(PKGLOGDIR)/bison.log && exit $$PIPESTATUS)
	@echo "Bison finished $(shell date -R) "

flex.o:
	@echo "Flex started $(shell date -R) "
	(make -C flex 2>&1 | tee $(PKGLOGDIR)/flex.log && exit $$PIPESTATUS)
	@echo "Flex finished $(shell date -R) "

linux-pam.o:
	@echo "Linux-PAM started $(shell date -R) "
	(make -C linux-pam 2>&1 | tee $(PKGLOGDIR)/linux-pam.log && exit $$PIPESTATUS)
	@echo "Linux-PAM finished $(shell date -R) "

shadow.o:
	@echo "Shadow started $(shell date -R) "
	(make -C shadow 2>&1 | tee $(PKGLOGDIR)/shadow.log && exit $$PIPESTATUS)
	@echo "Shadow finished $(shell date -R) "

coreutils.o:
	@echo "Coreutils started $(shell date -R) "
	(make -C coreutils 2>&1 | tee $(PKGLOGDIR)/coreutils.log && exit $$PIPESTATUS)
	@echo "Coreutils finished $(shell date -R) "

iana-etc.o:
	@echo "Iana-etc started $(shell date -R) "
	(make -C iana-etc 2>&1 | tee $(PKGLOGDIR)/iana-etc.log && exit $$PIPESTATUS)
	@echo "Iana-etc finished $(shell date -R) "

libtool.o:
	@echo "Libtool started $(shell date -R) "
	(make -C libtool 2>&1 | tee $(PKGLOGDIR)/libtool.log && exit $$PIPESTATUS)
	@echo "Libtool finished $(shell date -R) "

iproute2.o:
	@echo "Iproute2 started $(shell date -R) "
	(make -C iproute2 2>&1 | tee $(PKGLOGDIR)/iproute2.log && exit $$PIPESTATUS)
	@echo "Iproute2 finished $(shell date -R) "

readline.o:
	@echo "Readline started $(shell date -R) "
	(make -C readline 2>&1 | tee $(PKGLOGDIR)/readline.log && exit $$PIPESTATUS)
	@echo "Readline finished $(shell date -R) "

autoconf.o:
	@echo "Autoconf started $(shell date -R) "
	(make -C autoconf 2>&1 | tee $(PKGLOGDIR)/autoconf.log && exit $$PIPESTATUS)
	@echo "Autoconf finished $(shell date -R) "

automake.o:
	@echo "Automake started $(shell date -R) "
	(make -C automake 2>&1 | tee $(PKGLOGDIR)/automake.log && exit $$PIPESTATUS)
	@echo "Automake finished $(shell date -R) "

bash.o:
	@echo "Bash started $(shell date -R) "
	(make -C bash 2>&1 | tee $(PKGLOGDIR)/bash.log && exit $$PIPESTATUS)
	@echo "Bash finished $(shell date -R) "

bc.o:
	@echo "Bc started $(shell date -R) "
	(make -C bc 2>&1 | tee $(PKGLOGDIR)/bc.log && exit $$PIPESTATUS)
	@echo "Bc finished $(shell date -R) "

bzip2.o:
	@echo "Bzip2 started $(shell date -R) "
	(make -C bzip2 2>&1 | tee $(PKGLOGDIR)/bzip2.log && exit $$PIPESTATUS)
	@echo "Bzip2 finished $(shell date -R) "

diffutils.o:
	@echo "Diffutils started $(shell date -R) "
	(make -C diffutils 2>&1 | tee $(PKGLOGDIR)/diffutils.log && exit $$PIPESTATUS)
	@echo "Diffutils finished $(shell date -R) "

file.o:
	@echo "File started $(shell date -R) "
	(make -C file 2>&1 | tee $(PKGLOGDIR)/file.log && exit $$PIPESTATUS)
	@echo "File finished $(shell date -R) "

gawk.o:
	@echo "Gawk started $(shell date -R) "
	(make -C gawk 2>&1 | tee $(PKGLOGDIR)/gawk.log && exit $$PIPESTATUS)
	@echo "Gawk finished $(shell date -R) "

findutils.o:
	@echo "Findutils started $(shell date -R) "
	(make -C findutils 2>&1 | tee $(PKGLOGDIR)/findutils.log && exit $$PIPESTATUS)
	@echo "Findutils finished $(shell date -R) "

gettext.o:
	@echo "Gettext started $(shell date -R) "
	(make -C gettext 2>&1 | tee $(PKGLOGDIR)/gettext.log && exit $$PIPESTATUS)
	@echo "Gettext finished $(shell date -R) "

gperf.o:
	@echo "Gperf started $(shell date -R) "
	(make -C gperf 2>&1 | tee $(PKGLOGDIR)/gperf.log && exit $$PIPESTATUS)
	@echo "Gperf finished $(shell date -R) "

grep.o:
	@echo "Grep started $(shell date -R) "
	(make -C grep 2>&1 | tee $(PKGLOGDIR)/grep.log && exit $$PIPESTATUS)
	@echo "Grep finished $(shell date -R) "

groff.o:
	@echo "Groff started $(shell date -R) "
	(make -C groff 2>&1 | tee $(PKGLOGDIR)/groff.log && exit $$PIPESTATUS)
	@echo "Groff finished $(shell date -R) "

less.o:
	@echo "Less started $(shell date -R) "
	(make -C less 2>&1 | tee $(PKGLOGDIR)/less.log && exit $$PIPESTATUS)
	@echo "Less finished $(shell date -R) "

gzip.o:
	@echo "Gzip started $(shell date -R) "
	(make -C gzip 2>&1 | tee $(PKGLOGDIR)/gzip.log && exit $$PIPESTATUS)
	@echo "Gzip finished $(shell date -R) "

inetutils.o:
	@echo "Inetutils started $(shell date -R) "
	(make -C inetutils 2>&1 | tee $(PKGLOGDIR)/inetutils.log && exit $$PIPESTATUS)
	@echo "Inetutils finished $(shell date -R) "

net-tools.o:
	@echo "Net-tools started $(shell date -R) "
	(make -C net-tools 2>&1 | tee $(PKGLOGDIR)/net-tools.log && exit $$PIPESTATUS)
	@echo "Net-tools finished $(shell date -R) "

kbd.o:
	@echo "Kbd started $(shell date -R) "
	(make -C kbd 2>&1 | tee $(PKGLOGDIR)/kbd.log && exit $$PIPESTATUS)
	@echo "Kbd finished $(shell date -R) "

libpipeline.o:
	@echo "libpipeline started $(shell date -R) "
	(make -C libpipeline 2>&1 | tee $(PKGLOGDIR)/libpipeline.log && exit $$PIPESTATUS)
	@echo "libpipeline finished $(shell date -R) "

make.o:
	@echo "Make started $(shell date -R) "
	(make -C make 2>&1 | tee $(PKGLOGDIR)/make.log && exit $$PIPESTATUS)
	@echo "Make finished $(shell date -R) "

xz.o:
	@echo "Xz started $(shell date -R) "
	(make -C xz 2>&1 | tee $(PKGLOGDIR)/xz.log && exit $$PIPESTATUS)
	@echo "Xz finished $(shell date -R) "

elfutils.o:
	@echo "elfutils started $(shell date -R) "
	(make -C elfutils 2>&1 | tee $(PKGLOGDIR)/elfutils.log && exit $$PIPESTATUS)
	@echo "elfutils finished $(shell date -R) "

kmod.o:
	@echo "Kmod started $(shell date -R) "
	(make -C kmod 2>&1 | tee $(PKGLOGDIR)/kmod.log && exit $$PIPESTATUS)
	@echo "Kmod finished $(shell date -R) "

patch.o:
	@echo "Patch started $(shell date -R) "
	(make -C patch 2>&1 | tee $(PKGLOGDIR)/patch.log && exit $$PIPESTATUS)
	@echo "Patch finished $(shell date -R) "

psmisc.o:
	@echo "Psmisc started $(shell date -R) "
	(make -C psmisc 2>&1 | tee $(PKGLOGDIR)/psmisc.log && exit $$PIPESTATUS)
	@echo "Psmisc finished $(shell date -R) "

libestr.o:
	@echo "Libestr started $(shell date -R) "
	(make -C libestr 2>&1 | tee $(PKGLOGDIR)/libestr.log && exit $$PIPESTATUS)
	@echo "Libestr finished $(shell date -R) "

libee.o:
	@echo "Libee started $(shell date -R) "
	(make -C libee 2>&1 | tee $(PKGLOGDIR)/libee.log && exit $$PIPESTATUS)
	@echo "Libee finished $(shell date -R) "

json-c.o:
	@echo "Json-c started $(shell date -R) "
	(make -C json-c 2>&1 | tee $(PKGLOGDIR)/json-c.log && exit $$PIPESTATUS)
	@echo "Json-c finished $(shell date -R) "

tar.o:
	@echo "Tar started $(shell date -R) "
	(make -C tar 2>&1 | tee $(PKGLOGDIR)/tar.log && exit $$PIPESTATUS)
	@echo "Tar finished $(shell date -R) "

texinfo.o:
	@echo "Texinfo started $(shell date -R) "
	(make -C texinfo 2>&1 | tee $(PKGLOGDIR)/texinfo.log && exit $$PIPESTATUS)
	@echo "Texinfo finished $(shell date -R) "

vim.o:
	@echo "Vim started $(shell date -R) "
	(make -C vim 2>&1 | tee $(PKGLOGDIR)/vim.log && exit $$PIPESTATUS)
	@echo "Vim finished $(shell date -R) "

grub.o:
	@echo "GRUB started $(shell date -R) "
	(make -C grub 2>&1 | tee $(PKGLOGDIR)/grub.log && exit $$PIPESTATUS)
	@echo "GRUB finished $(shell date -R) "

kernel.o:
	@echo "Linux started $(shell date -R) "
	(make -C kernel 2>&1 | tee $(PKGLOGDIR)/kernel.log && exit $$PIPESTATUS)
	@echo "Linux finished $(shell date -R) "

libaio.o:
	@echo "libaio started $(shell date -R) "
	(make -C libaio 2>&1 | tee $(PKGLOGDIR)/libaio.log && exit $$PIPESTATUS)
	@echo "libaio finished $(shell date -R) "

libevent.o:
	@echo "libevent started $(shell date -R) "
	(make -C libevent 2>&1 | tee $(PKGLOGDIR)/libevent.log && exit $$PIPESTATUS)
	@echo "libevent finished $(shell date -R) "

libusb.o:
	@echo "libusb started $(shell date -R) "
	(make -C libusb 2>&1 | tee $(PKGLOGDIR)/libusb.log && exit $$PIPESTATUS)
	@echo "libusb finished $(shell date -R) "

libusb-compat.o:
	@echo "libusb-compat started $(shell date -R) "
	(make -C libusb-compat 2>&1 | tee $(PKGLOGDIR)/libusb-compat.log && exit $$PIPESTATUS)
	@echo "libusb-compat finished $(shell date -R) "

usbutils.o:
	@echo "usbutils started $(shell date -R) "
	(make -C usbutils 2>&1 | tee $(PKGLOGDIR)/usbutils.log && exit $$PIPESTATUS)
	@echo "usbutils finished $(shell date -R) "

icu.o:
	@echo "icu started $(shell date -R) "
	(make -C icu 2>&1 | tee $(PKGLOGDIR)/icu.log && exit $$PIPESTATUS)
	@echo "icu finished $(shell date -R) "

libxml2.o:
	@echo "libxml2 started $(shell date -R) "
	(make -C libxml2 2>&1 | tee $(PKGLOGDIR)/libxml2.log && exit $$PIPESTATUS)
	@echo "libxml2 finished $(shell date -R) "

jansson.o:
	@echo "jansson started $(shell date -R) "
	(make -C jansson 2>&1 | tee $(PKGLOGDIR)/jansson.log && exit $$PIPESTATUS)
	@echo "jansson finished $(shell date -R) "

libnl.o:
	@echo "libnl started $(shell date -R) "
	(make -C libnl 2>&1 | tee $(PKGLOGDIR)/libnl.log && exit $$PIPESTATUS)
	@echo "libnl finished $(shell date -R) "

libical.o:
	@echo "libical started $(shell date -R) "
	(make -C libical 2>&1 | tee $(PKGLOGDIR)/libical.log && exit $$PIPESTATUS)
	@echo "libical finished $(shell date -R) "

bluez.o:
	@echo "bluez started $(shell date -R) "
	(make -C bluez 2>&1 | tee $(PKGLOGDIR)/bluez.log && exit $$PIPESTATUS)
	@echo "bluez finished $(shell date -R) "

libpcap.o:
	@echo "libpcap started $(shell date -R) "
	(make -C libpcap 2>&1 | tee $(PKGLOGDIR)/libpcap.log && exit $$PIPESTATUS)
	@echo "libpcap finished $(shell date -R) "

libmnl.o:
	@echo "libmnl started $(shell date -R) "
	(make -C libmnl 2>&1 | tee $(PKGLOGDIR)/libmnl.log && exit $$PIPESTATUS)
	@echo "libmnl finished $(shell date -R) "

libnftnl.o:
	@echo "libnftnl started $(shell date -R) "
	(make -C libnftnl 2>&1 | tee $(PKGLOGDIR)/libnftnl.log && exit $$PIPESTATUS)
	@echo "libnftnl finished $(shell date -R) "

libnfnetlink.o:
	@echo "libnfnetlink started $(shell date -R) "
	(make -C libnfnetlink 2>&1 | tee $(PKGLOGDIR)/libnfnetlink.log && exit $$PIPESTATUS)
	@echo "libnfnetlink finished $(shell date -R) "

libnetfilter_acct.o:
	@echo "libnetfilter_acct started $(shell date -R) "
	(make -C libnetfilter_acct 2>&1 | tee $(PKGLOGDIR)/libnetfilter_acct.log && exit $$PIPESTATUS)
	@echo "libnetfilter_acct finished $(shell date -R) "

libnetfilter_log.o:
	@echo "libnetfilter_log started $(shell date -R) "
	(make -C libnetfilter_log 2>&1 | tee $(PKGLOGDIR)/libnetfilter_log.log && exit $$PIPESTATUS)
	@echo "libnetfilter_log finished $(shell date -R) "

libnetfilter_queue.o:
	@echo "libnetfilter_queue started $(shell date -R) "
	(make -C libnetfilter_queue 2>&1 | tee $(PKGLOGDIR)/libnetfilter_queue.log && exit $$PIPESTATUS)
	@echo "libnetfilter_queue finished $(shell date -R) "

libnetfilter_conntrack.o:
	@echo "libnetfilter_conntrack started $(shell date -R) "
	(make -C libnetfilter_conntrack 2>&1 | tee $(PKGLOGDIR)/libnetfilter_conntrack.log && exit $$PIPESTATUS)
	@echo "libnetfilter_conntrack finished $(shell date -R) "

libnetfilter_cttimeout.o:
	@echo "libnetfilter_cttimeout started $(shell date -R) "
	(make -C libnetfilter_cttimeout 2>&1 | tee $(PKGLOGDIR)/libnetfilter_cttimeout.log && exit $$PIPESTATUS)
	@echo "libnetfilter_cttimeout finished $(shell date -R) "

libnetfilter_cthelper.o:
	@echo "libnetfilter_cthelper started $(shell date -R) "
	(make -C libnetfilter_cthelper 2>&1 | tee $(PKGLOGDIR)/libnetfilter_cthelper.log && exit $$PIPESTATUS)
	@echo "libnetfilter_cthelper finished $(shell date -R) "

ipset.o:
	@echo "ipset started $(shell date -R) "
	(make -C ipset 2>&1 | tee $(PKGLOGDIR)/ipset.log && exit $$PIPESTATUS)
	@echo "ipset finished $(shell date -R) "

iptables.o:
	@echo "iptables started $(shell date -R) "
	(make -C iptables 2>&1 | tee $(PKGLOGDIR)/iptables.log && exit $$PIPESTATUS)
	@echo "iptables finished $(shell date -R) "

nftables.o:
	@echo "nftables started $(shell date -R) "
	(make -C nftables 2>&1 | tee $(PKGLOGDIR)/nftables.log && exit $$PIPESTATUS)
	@echo "nftables finished $(shell date -R) "

sqlite3.o:
	@echo "sqlite3 started $(shell date -R) "
	(make -C sqlite3 2>&1 | tee $(PKGLOGDIR)/sqlite3.log && exit $$PIPESTATUS)
	@echo "sqlite3 finished $(shell date -R) "

ulogd.o:
	@echo "ulogd started $(shell date -R) "
	(make -C ulogd 2>&1 | tee $(PKGLOGDIR)/ulogd.log && exit $$PIPESTATUS)
	@echo "ulogd finished $(shell date -R) "

zeromq.o:
	@echo "zeromq started $(shell date -R) "
	(make -C zeromq 2>&1 | tee $(PKGLOGDIR)/zeromq.log && exit $$PIPESTATUS)
	@echo "zeromq finished $(shell date -R) "

msgpack.o:
	@echo "msgpack started $(shell date -R) "
	(make -C msgpack 2>&1 | tee $(PKGLOGDIR)/msgpack.log && exit $$PIPESTATUS)
	@echo "msgpack finished $(shell date -R) "

snappy.o:
	@echo "snappy started $(shell date -R) "
	(make -C snappy 2>&1 | tee $(PKGLOGDIR)/snappy.log && exit $$PIPESTATUS)
	@echo "snappy finished $(shell date -R) "

groonga.o:
	@echo "groonga started $(shell date -R) "
	(make -C groonga 2>&1 | tee $(PKGLOGDIR)/groonga.log && exit $$PIPESTATUS)
	@echo "groonga finished $(shell date -R) "

mariadb.o:
	@echo "mariadb started $(shell date -R) "
	(make -C mariadb 2>&1 | tee $(PKGLOGDIR)/mariadb.log && exit $$PIPESTATUS)
	@echo "mariadb finished $(shell date -R) "

libdbi.o:
	@echo "libdbi started $(shell date -R) "
	(make -C libdbi 2>&1 | tee $(PKGLOGDIR)/libdbi.log && exit $$PIPESTATUS)
	@echo "libdbi finished $(shell date -R) "

libdbi-drivers.o:
	@echo "libdbi-drivers started $(shell date -R) "
	(make -C libdbi-drivers 2>&1 | tee $(PKGLOGDIR)/libdbi-drivers.log && exit $$PIPESTATUS)
	@echo "libdbi-drivers finished $(shell date -R) "

libmicrohttpd.o:
	@echo "libmicrohttpd started $(shell date -R) "
	(make -C libmicrohttpd 2>&1 | tee $(PKGLOGDIR)/libmicrohttpd.log && exit $$PIPESTATUS)
	@echo "libmicrohttpd finished $(shell date -R) "

expat.o:
	@echo "expat started $(shell date -R) "
	(make -C expat 2>&1 | tee $(PKGLOGDIR)/expat.log && exit $$PIPESTATUS)
	@echo "expat finished $(shell date -R) "

intltool.o:
	@echo "intltool started $(shell date -R) "
	(make -C intltool 2>&1 | tee $(PKGLOGDIR)/intltool.log && exit $$PIPESTATUS)
	@echo "intltool finished $(shell date -R) "

openssl.o:
	@echo "OpenSSL started $(shell date -R) "
	(make -C openssl 2>&1 | tee $(PKGLOGDIR)/openssl.log && exit $$PIPESTATUS)
	@echo "OpenSSL finished $(shell date -R) "

curl.o:
	@echo "curl started $(shell date -R) "
	(make -C curl 2>&1 | tee $(PKGLOGDIR)/curl.log && exit $$PIPESTATUS)
	@echo "curl finished $(shell date -R) "

systemd.o:
	@echo "systemd started $(shell date -R) "
	(make -C systemd 2>&1 | tee $(PKGLOGDIR)/systemd.log && exit $$PIPESTATUS)
	@echo "systemd finished $(shell date -R) "

dbus.o:
	@echo "D-bus started $(shell date -R) "
	(make -C dbus 2>&1 | tee $(PKGLOGDIR)/dbus.log && exit $$PIPESTATUS)
	@echo "D-bus finished $(shell date -R) "

lzo.o:
	@echo "lzo started $(shell date -R) "
	(make -C lzo 2>&1 | tee $(PKGLOGDIR)/lzo.log && exit $$PIPESTATUS)
	@echo "lzo finished $(shell date -R) "

lzip.o:
	@echo "lzip started $(shell date -R) "
	(make -C lzip 2>&1 | tee $(PKGLOGDIR)/lzip.log && exit $$PIPESTATUS)
	@echo "lzip finished $(shell date -R) "

lz4.o:
	@echo "lz4 started $(shell date -R) "
	(make -C lz4 2>&1 | tee $(PKGLOGDIR)/lz4.log && exit $$PIPESTATUS)
	@echo "lz4 finished $(shell date -R) "

libedit.o:
	@echo "Libedit started $(shell date -R) "
	(make -C libedit 2>&1 | tee $(PKGLOGDIR)/libedit.log && exit $$PIPESTATUS)
	@echo "Libedit finished $(shell date -R) "

openssh.o:
	@echo "Openssh started $(shell date -R) "
	(make -C openssh 2>&1 | tee $(PKGLOGDIR)/openssh.log && exit $$PIPESTATUS)
	@echo "Openssh finished $(shell date -R) "

pcre.o:
	@echo "pcre started $(shell date -R) "
	(make -C pcre 2>&1 | tee $(PKGLOGDIR)/pcre.log && exit $$PIPESTATUS)
	@echo "pcre finished $(shell date -R) "

glib2.o:
	@echo "Glib started $(shell date -R) "
	(make -C glib2 2>&1 | tee $(PKGLOGDIR)/glib2.log && exit $$PIPESTATUS)
	@echo "Glib finished $(shell date -R) "

syslog-ng.o:
	@echo "syslog-ng started $(shell date -R) "
	(make -C syslog-ng 2>&1 | tee $(PKGLOGDIR)/syslog-ng.log && exit $$PIPESTATUS)
	@echo "syslog-ng finished $(shell date -R) "

wget.o:
	@echo "wget started $(shell date -R) "
	(make -C wget 2>&1 | tee $(PKGLOGDIR)/wget.log && exit $$PIPESTATUS)
	@echo "wget finished $(shell date -R) "

sysconfig.o:
	@echo "Sysconfig started $(shell date -R) "
	(make -C sysconfig 2>&1 | tee $(PKGLOGDIR)/sysconfig.log && exit $$PIPESTATUS)
	@echo "Sysconfig finished $(shell date -R) "

#============== [ targetfs packages ] ========================================================

strip.o:
	@echo "Stripping targetfs"
	find $(SYSROOTDIR)/{,usr/}{bin,lib,sbin} -type f -exec $(CROSSTOOLS)/bin/$(TARGETARCH)-strip --strip-debug '{}' ';'

clean:
	for pkg in `ls | grep -v Makefile`; do \
		make -C $$pkg clean ;\
	done ;\
  
PHONY: all targetfs
