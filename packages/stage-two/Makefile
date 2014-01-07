#include general config file
include ../../conf/environment.mk
include ../../conf/shell-env.mk

all: targetfs

targetfs: fhs.o gmp.o mpfr.o mpc.o zlib.o binutils.o gcc.o sed.o libffi.o libiconv.o ncurses.o \
	pkg-config-lite.o check.o attr.o acl.o libcap.o util-linux.o procps-ng.o e2fsprogs.o \
	cracklib.o m4.o bison.o flex.o linux-pam.o shadow.o coreutils.o iana-etc.o libtool.o \
	iproute2.o readline.o autoconf.o automake.o bash.o bc.o bzip2.o diffutils.o file.o gawk.o \
	findutils.o gettext.o grep.o groff.o less.o gzip.o inetutils.o net-tools.o kbd.o make.o \
	xz.o kmod.o patch.o psmisc.o libestr.o libee.o json-c.o rsyslog.o sysvinit.o tar.o texinfo.o \
	eudev.o vim.o kernel.o bootscripts.o sysconfig.o

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

libiconv.o:
	@echo "Libiconv started $(shell date -R) "
	(make -C libiconv 2>&1 | tee $(PKGLOGDIR)/libiconv.log && exit $$PIPESTATUS)
	@echo "Libiconv finished $(shell date -R) "

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

make.o:
	@echo "Make started $(shell date -R) "
	(make -C make 2>&1 | tee $(PKGLOGDIR)/make.log && exit $$PIPESTATUS)
	@echo "Make finished $(shell date -R) "

xz.o:
	@echo "Xz started $(shell date -R) "
	(make -C xz 2>&1 | tee $(PKGLOGDIR)/xz.log && exit $$PIPESTATUS)
	@echo "Xz finished $(shell date -R) "

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

rsyslog.o:
	@echo "Rsyslog started $(shell date -R) "
	(make -C rsyslog 2>&1 | tee $(PKGLOGDIR)/rsyslog.log && exit $$PIPESTATUS)
	@echo "Rsyslog finished $(shell date -R) "

sysvinit.o:
	@echo "Sysvinit started $(shell date -R) "
	(make -C sysvinit 2>&1 | tee $(PKGLOGDIR)/sysvinit.log && exit $$PIPESTATUS)
	@echo "Sysvinit finished $(shell date -R) "

tar.o:
	@echo "Tar started $(shell date -R) "
	(make -C tar 2>&1 | tee $(PKGLOGDIR)/tar.log && exit $$PIPESTATUS)
	@echo "Tar finished $(shell date -R) "

texinfo.o:
	@echo "Texinfo started $(shell date -R) "
	(make -C texinfo 2>&1 | tee $(PKGLOGDIR)/texinfo.log && exit $$PIPESTATUS)
	@echo "Texinfo finished $(shell date -R) "

eudev.o:
	@echo "Eudev started $(shell date -R) "
	(make -C eudev 2>&1 | tee $(PKGLOGDIR)/eudev.log && exit $$PIPESTATUS)
	@echo "Eudev finished $(shell date -R) "

vim.o:
	@echo "Vim started $(shell date -R) "
	(make -C vim 2>&1 | tee $(PKGLOGDIR)/vim.log && exit $$PIPESTATUS)
	@echo "Vim finished $(shell date -R) "

kernel.o:
	@echo "Linux started $(shell date -R) "
	(make -C kernel 2>&1 | tee $(PKGLOGDIR)/kernel.log && exit $$PIPESTATUS)
	@echo "Linux finished $(shell date -R) "

bootscripts.o:
	@echo "CLFS bootscripts started $(shell date -R) "
	(make -C bootscripts 2>&1 | tee $(PKGLOGDIR)/bootscripts.log && exit $$PIPESTATUS)
	@echo "CLFS bootscripts finished $(shell date -R) "

sysconfig.o:
	@echo "Sysconfig started $(shell date -R) "
	(make -C sysconfig 2>&1 | tee $(PKGLOGDIR)/sysconfig.log && exit $$PIPESTATUS)
	@echo "Sysconfig finished $(shell date -R) "

#============== [ targetfs packages ] ========================================================

strip.o:
	@echo "Stripping targetfs"

clean:
	for pkg in `ls | grep -v Makefile`; do \
		make -C $$pkg clean ;\
	done ;\
  
PHONY: all targetfs
