#include general config file
include ../../conf/environment.mk

all: xtools

xtools: host-tools host-pl pkgmgr x-compiler fhs-pkg.o kheaders-pkg.o musl-pkg.o musl-extras

host-tools: pkg-config-lite.o libtool.o autoconf.o automake.o bc.o file.o m4.o ncurses.o \
	wayland.o perl.o whois.o autoconf213.o

host-pl: pl-syshostnamelong.o pl-mailsendmail.o pl-timedate.o pl-termreadkey.o \
	pl-localegettext.o pl-textcharwidth.o pl-textwrapi18n.o pl-compressrawbzip2.o \
	pl-compressrawzlib.o pl-iocompress.o pl-modulebuild.o pl-encodeeucjpascii.o \
	pl-encodeiso2022.o pl-encodejisx0213.o pl-fileremove.o pl-yamltiny.o \
	pl-testrequires.o pl-modulescandeps.o pl-moduleinstall.o pl-encodehanextra.o \
	pl-pod2base.o pl-mimecharset.o pl-unicodelinebreak.o pl-sgmlspm.o pl-testpod.o \
	pl-subidentify.o pl-super.o pl-testmockmodule.o pl-archivezip.o pl-encodelocale.o \
	pl-httpdate.o pl-filelisting.o pl-htmltagset.o pl-htmlparser.o pl-iohtml.o \
	pl-lwpmediatypes.o pl-trytiny.o pl-testneeds.o pl-uri.o pl-httpmessage.o \
	pl-httpcookies.o pl-httpdaemon.o pl-httpnegotiate.o pl-nethttp.o pl-testfatal.o \
	pl-testrequiresinternet.o pl-wwwrobotrules.o pl-libwww.o pl-xmlparser.o \
	pl-develsymdump.o pl-podcoverage.o pl-testpodcoverage.o pl-configfile.o pl-xmlsimple.o

x-compiler: fhs-sysroot.o kheaders-sysroot.o gmp.o mpfr.o mpc.o isl.o \
	binutils.o gcc-stage1.o musl-sysroot.o gcc-stage2.o

musl-extras: musl-locales.o musl-fts.o musl-obstack.o timezone.o argp-standalone.o

pkgmgr: intltool.o intltool-debian.o po4a.o fakeroot.o dpkg.o apt.o debhelper.o dh-make.o \
	dpkg-sig.o


#==================== Cross Toolchain ================================================
fhs-sysroot.o: 
	@echo "fhs [sysroot] started $(shell date -R) "
	( make -C fhs install-sysroot 2>&1 | tee $(PKGLOGDIR)/fhs-sysroot.log && exit $$PIPESTATUS )
	@echo "fhs [sysroot] finished $(shell date -R) "

fhs-pkg.o: 
	@echo "fhs [pkg] started $(shell date -R) "
	( make -C fhs install-pkg 2>&1 | tee $(PKGLOGDIR)/fhs-pkg.log && exit $$PIPESTATUS )
	@echo "fhs [pkg] finished $(shell date -R) "

bc.o: 
	@echo "Bc started $(shell date -R) "
	( make -C bc 2>&1 | tee $(PKGLOGDIR)/bc.log && exit $$PIPESTATUS )
	@echo "Bc finished $(shell date -R) "

kheaders-sysroot.o:
	@echo "Linux kernel headers [sysroot] started $(shell date -R) "
	( make -C kheaders install-sysroot  2>&1  | tee $(PKGLOGDIR)/kheaders-sysroot.log && exit $$PIPESTATUS )
	@echo "Linux kernel headers [sysroot] finished $(shell date -R) "

kheaders-pkg.o:
	@echo "Linux kernel headers [pkg] started $(shell date -R) "
	( make -C kheaders install-pkg  2>&1  | tee $(PKGLOGDIR)/kheaders-pkg.log && exit $$PIPESTATUS )
	@echo "Linux kernel headers [pkg] finished $(shell date -R) "

file.o: 
	@echo "File started $(shell date -R) "
	( make -C file 2>&1 | tee $(PKGLOGDIR)/file.log && exit $$PIPESTATUS )
	@echo "File finished $(shell date -R) "

m4.o: 
	@echo "M4 started $(shell date -R) "
	( make -C m4 2>&1 | tee $(PKGLOGDIR)/m4.log && exit $$PIPESTATUS )
	@echo "M4 finished $(shell date -R) "

ncurses.o: 
	@echo "Ncurses started $(shell date -R) "
	( make -C ncurses 2>&1 | tee $(PKGLOGDIR)/ncurses.log && exit $$PIPESTATUS )
	@echo "Ncurses finished $(shell date -R) "

wayland.o: 
	@echo "wayland started $(shell date -R) "
	( make -C wayland 2>&1 | tee $(PKGLOGDIR)/wayland.log && exit $$PIPESTATUS )
	@echo "wayland finished $(shell date -R) "

pkg-config-lite.o: 
	@echo "Pkg-config-lite started $(shell date -R) "
	( make -C pkg-config-lite 2>&1 | tee $(PKGLOGDIR)/pkg-config-lite.log && exit $$PIPESTATUS )
	@echo "Pkg-config-lite finished $(shell date -R) "

perl.o: 
	@echo "Perl started $(shell date -R) "
	( make -C perl 2>&1 | tee $(PKGLOGDIR)/perl.log && exit $$PIPESTATUS )
	@echo "Perl finished $(shell date -R) "

whois.o: 
	@echo "whois started $(shell date -R) "
	( make -C whois 2>&1 | tee $(PKGLOGDIR)/whois.log && exit $$PIPESTATUS )
	@echo "whois finished $(shell date -R) "

autoconf213.o: 
	@echo "autoconf213 started $(shell date -R) "
	( make -C autoconf213 2>&1 | tee $(PKGLOGDIR)/autoconf213.log && exit $$PIPESTATUS )
	@echo "autoconf213 finished $(shell date -R) "

libtool.o: 
	@echo "libtool cross started $(shell date -R) "
	( make -C libtool 2>&1 | tee $(PKGLOGDIR)/libtool-cross.log && exit $$PIPESTATUS )
	@echo "libtool cross finished $(shell date -R) "

autoconf.o: 
	@echo "autoconf cross started $(shell date -R) "
	( make -C autoconf 2>&1 | tee $(PKGLOGDIR)/autoconf-cross.log && exit $$PIPESTATUS )
	@echo "autoconf cross finished $(shell date -R) "

automake.o: 
	@echo "automake cross started $(shell date -R) "
	( make -C automake 2>&1 | tee $(PKGLOGDIR)/automake-cross.log && exit $$PIPESTATUS )
	@echo "automake cross finished $(shell date -R) "

gmp.o: 
	@echo "GMP started $(shell date -R) "
	( make -C gmp 2>&1 | tee $(PKGLOGDIR)/gmp.log && exit $$PIPESTATUS )
	@echo "GMP finished $(shell date -R) "

mpfr.o: 
	@echo "MPFR started $(shell date -R) "
	( make -C mpfr 2>&1 | tee $(PKGLOGDIR)/mpfr.log && exit $$PIPESTATUS )
	@echo "MPFR finished $(shell date -R) "

mpc.o: 
	@echo "MPC started $(shell date -R) "
	( make -C mpc 2>&1 | tee $(PKGLOGDIR)/mpc.log && exit $$PIPESTATUS )
	@echo "MPC finished $(shell date -R) "

isl.o: 
	@echo "isl started $(shell date -R) "
	( make -C isl 2>&1 | tee $(PKGLOGDIR)/isl.log && exit $$PIPESTATUS )
	@echo "isl finished $(shell date -R) "

binutils.o: 
	@echo "Binutils started $(shell date -R) "
	( make -C binutils 2>&1 | tee $(PKGLOGDIR)/binutils.log && exit $$PIPESTATUS )
	@echo "Binutils finished $(shell date -R) "

gcc-stage1.o:
	@echo "GCC (Stage One) started $(shell date -R) "
	( make -C gcc-stage1 2>&1  | tee $(PKGLOGDIR)/gcc-stage1.log && exit $$PIPESTATUS )
	@echo "GCC (Stage One) finished $(shell date -R) "

musl-sysroot.o:
	@echo "Musl lib C [sysroot] started $(shell date -R) "
	( make -C musl install-sysroot 2>&1  | tee $(PKGLOGDIR)/musl-sysroot.log && exit $$PIPESTATUS )
	@echo "Musl lib C [sysroot] finished $(shell date -R) "

musl-pkg.o:
	@echo "Musl lib C [pkg] started $(shell date -R) "
	( make -C musl install-pkg 2>&1  | tee $(PKGLOGDIR)/musl-pkg.log && exit $$PIPESTATUS )
	@echo "Musl lib C [pkg] finished $(shell date -R) "

gcc-stage2.o:
	@echo "GCC (Stage Two) started $(shell date -R) "
	( make -C gcc-stage2 2>&1  | tee $(PKGLOGDIR)/gcc-stage2.log && exit $$PIPESTATUS )
	@echo "GCC (Stage Two) finished $(shell date -R) "

musl-locales.o:
	@echo "Musl lib C locales started $(shell date -R) "
	( make -C musl-locales 2>&1  | tee $(PKGLOGDIR)/musl-locales.log && exit $$PIPESTATUS )
	@echo "Musl lib C locales finished $(shell date -R) "

musl-fts.o:
	@echo "Musl fts support started $(shell date -R) "
	( make -C musl-fts 2>&1  | tee $(PKGLOGDIR)/musl-fts.log && exit $$PIPESTATUS )
	@echo "Musl fts support finished $(shell date -R) "

musl-obstack.o:
	@echo "Musl obstack support started $(shell date -R) "
	( make -C musl-obstack 2>&1  | tee $(PKGLOGDIR)/musl-obstack.log && exit $$PIPESTATUS )
	@echo "Musl obstack support finished $(shell date -R) "

timezone.o: 
	@echo "timezone data started $(shell date -R) "
	( make -C timezone 2>&1 | tee $(PKGLOGDIR)/timezone.log && exit $$PIPESTATUS )
	@echo "timezone finished $(shell date -R) "

argp-standalone.o:
	@echo "argp-standalone started $(shell date -R) "
	( make -C argp-standalone 2>&1 | tee $(PKGLOGDIR)/argp-standalone.log && exit $$PIPESTATUS )
	@echo "argp-standalone finished $(shell date -R) "

pl-syshostnamelong.o:
	@echo "pl-syshostnamelong started $(shell date -R) "
	(make -C pl-syshostnamelong 2>&1 | tee $(PKGLOGDIR)/pl-syshostnamelong.log && exit $$PIPESTATUS)
	@echo "pl-syshostnamelong finished $(shell date -R) "

pl-mailsendmail.o:
	@echo "pl-mailsendmail started $(shell date -R) "
	(make -C pl-mailsendmail 2>&1 | tee $(PKGLOGDIR)/pl-mailsendmail.log && exit $$PIPESTATUS)
	@echo "pl-mailsendmail finished $(shell date -R) "

pl-timedate.o:
	@echo "pl-timedate started $(shell date -R) "
	(make -C pl-timedate 2>&1 | tee $(PKGLOGDIR)/pl-timedate.log && exit $$PIPESTATUS)
	@echo "pl-timedate finished $(shell date -R) "

pl-termreadkey.o:
	@echo "pl-termreadkey started $(shell date -R) "
	(make -C pl-termreadkey 2>&1 | tee $(PKGLOGDIR)/pl-termreadkey.log && exit $$PIPESTATUS)
	@echo "pl-termreadkey finished $(shell date -R) "

pl-localegettext.o:
	@echo "pl-localegettext started $(shell date -R) "
	(make -C pl-localegettext 2>&1 | tee $(PKGLOGDIR)/pl-localegettext.log && exit $$PIPESTATUS)
	@echo "pl-localegettext finished $(shell date -R) "

pl-textcharwidth.o:
	@echo "pl-textcharwidth started $(shell date -R) "
	(make -C pl-textcharwidth 2>&1 | tee $(PKGLOGDIR)/pl-textcharwidth.log && exit $$PIPESTATUS)
	@echo "pl-textcharwidth finished $(shell date -R) "

pl-textwrapi18n.o:
	@echo "pl-textwrapi18n started $(shell date -R) "
	(make -C pl-textwrapi18n 2>&1 | tee $(PKGLOGDIR)/pl-textwrapi18n.log && exit $$PIPESTATUS)
	@echo "pl-textwrapi18n finished $(shell date -R) "

pl-compressrawbzip2.o:
	@echo "pl-compressrawbzip2 started $(shell date -R) "
	(make -C pl-compressrawbzip2 2>&1 | tee $(PKGLOGDIR)/pl-compressrawbzip2.log && exit $$PIPESTATUS)
	@echo "pl-compressrawbzip2 finished $(shell date -R) "

pl-compressrawzlib.o:
	@echo "pl-compressrawzlib started $(shell date -R) "
	(make -C pl-compressrawzlib 2>&1 | tee $(PKGLOGDIR)/pl-compressrawzlib.log && exit $$PIPESTATUS)
	@echo "pl-compressrawzlib finished $(shell date -R) "

pl-iocompress.o:
	@echo "pl-iocompress started $(shell date -R) "
	(make -C pl-iocompress 2>&1 | tee $(PKGLOGDIR)/pl-iocompress.log && exit $$PIPESTATUS)
	@echo "pl-iocompress finished $(shell date -R) "

pl-modulebuild.o:
	@echo "pl-modulebuild started $(shell date -R) "
	(make -C pl-modulebuild 2>&1 | tee $(PKGLOGDIR)/pl-modulebuild.log && exit $$PIPESTATUS)
	@echo "pl-modulebuild finished $(shell date -R) "

pl-encodeeucjpascii.o:
	@echo "pl-encodeeucjpascii started $(shell date -R) "
	(make -C pl-encodeeucjpascii 2>&1 | tee $(PKGLOGDIR)/pl-encodeeucjpascii.log && exit $$PIPESTATUS)
	@echo "pl-encodeeucjpascii finished $(shell date -R) "

pl-encodeiso2022.o:
	@echo "pl-encodeiso2022 started $(shell date -R) "
	(make -C pl-encodeiso2022 2>&1 | tee $(PKGLOGDIR)/pl-encodeiso2022.log && exit $$PIPESTATUS)
	@echo "pl-encodeiso2022 finished $(shell date -R) "

pl-encodejisx0213.o:
	@echo "pl-encodejisx0213 started $(shell date -R) "
	(make -C pl-encodejisx0213 2>&1 | tee $(PKGLOGDIR)/pl-encodejisx0213.log && exit $$PIPESTATUS)
	@echo "pl-encodejisx0213 finished $(shell date -R) "

pl-fileremove.o:
	@echo "pl-fileremove started $(shell date -R) "
	(make -C pl-fileremove 2>&1 | tee $(PKGLOGDIR)/pl-fileremove.log && exit $$PIPESTATUS)
	@echo "pl-fileremove finished $(shell date -R) "

pl-yamltiny.o:
	@echo "pl-yamltiny started $(shell date -R) "
	(make -C pl-yamltiny 2>&1 | tee $(PKGLOGDIR)/pl-yamltiny.log && exit $$PIPESTATUS)
	@echo "pl-yamltiny finished $(shell date -R) "

pl-testrequires.o:
	@echo "pl-testrequires started $(shell date -R) "
	(make -C pl-testrequires 2>&1 | tee $(PKGLOGDIR)/pl-testrequires.log && exit $$PIPESTATUS)
	@echo "pl-testrequires finished $(shell date -R) "

pl-modulescandeps.o:
	@echo "pl-modulescandeps started $(shell date -R) "
	(make -C pl-modulescandeps 2>&1 | tee $(PKGLOGDIR)/pl-modulescandeps.log && exit $$PIPESTATUS)
	@echo "pl-modulescandeps finished $(shell date -R) "

pl-moduleinstall.o:
	@echo "pl-moduleinstall started $(shell date -R) "
	(make -C pl-moduleinstall 2>&1 | tee $(PKGLOGDIR)/pl-moduleinstall.log && exit $$PIPESTATUS)
	@echo "pl-moduleinstall finished $(shell date -R) "

pl-encodehanextra.o:
	@echo "pl-encodehanextra started $(shell date -R) "
	(make -C pl-encodehanextra 2>&1 | tee $(PKGLOGDIR)/pl-encodehanextra.log && exit $$PIPESTATUS)
	@echo "pl-encodehanextra finished $(shell date -R) "

pl-pod2base.o:
	@echo "pl-pod2base started $(shell date -R) "
	(make -C pl-pod2base 2>&1 | tee $(PKGLOGDIR)/pl-pod2base.log && exit $$PIPESTATUS)
	@echo "pl-pod2base finished $(shell date -R) "

pl-mimecharset.o:
	@echo "pl-mimecharset started $(shell date -R) "
	(make -C pl-mimecharset 2>&1 | tee $(PKGLOGDIR)/pl-mimecharset.log && exit $$PIPESTATUS)
	@echo "pl-mimecharset finished $(shell date -R) "

pl-unicodelinebreak.o:
	@echo "pl-unicodelinebreak started $(shell date -R) "
	(make -C pl-unicodelinebreak 2>&1 | tee $(PKGLOGDIR)/pl-unicodelinebreak.log && exit $$PIPESTATUS)
	@echo "pl-unicodelinebreak finished $(shell date -R) "

pl-sgmlspm.o:
	@echo "pl-sgmlspm started $(shell date -R) "
	(make -C pl-sgmlspm 2>&1 | tee $(PKGLOGDIR)/pl-sgmlspm.log && exit $$PIPESTATUS)
	@echo "pl-sgmlspm finished $(shell date -R) "

pl-testpod.o:
	@echo "pl-testpod started $(shell date -R) "
	(make -C pl-testpod 2>&1 | tee $(PKGLOGDIR)/pl-testpod.log && exit $$PIPESTATUS)
	@echo "pl-testpod finished $(shell date -R) "

pl-subidentify.o:
	@echo "pl-subidentify started $(shell date -R) "
	(make -C pl-subidentify 2>&1 | tee $(PKGLOGDIR)/pl-subidentify.log && exit $$PIPESTATUS)
	@echo "pl-subidentify finished $(shell date -R) "

pl-super.o:
	@echo "pl-super started $(shell date -R) "
	(make -C pl-super 2>&1 | tee $(PKGLOGDIR)/pl-super.log && exit $$PIPESTATUS)
	@echo "pl-super finished $(shell date -R) "

pl-testmockmodule.o:
	@echo "pl-testmockmodule started $(shell date -R) "
	(make -C pl-testmockmodule 2>&1 | tee $(PKGLOGDIR)/pl-testmockmodule.log && exit $$PIPESTATUS)
	@echo "pl-testmockmodule finished $(shell date -R) "

pl-archivezip.o:
	@echo "pl-archivezip started $(shell date -R) "
	(make -C pl-archivezip 2>&1 | tee $(PKGLOGDIR)/pl-archivezip.log && exit $$PIPESTATUS)
	@echo "pl-archivezip finished $(shell date -R) "

pl-encodelocale.o:
	@echo "pl-encodelocale started $(shell date -R) "
	(make -C pl-encodelocale 2>&1 | tee $(PKGLOGDIR)/pl-encodelocale.log && exit $$PIPESTATUS)
	@echo "pl-encodelocale finished $(shell date -R) "

pl-httpdate.o:
	@echo "pl-httpdate started $(shell date -R) "
	(make -C pl-httpdate 2>&1 | tee $(PKGLOGDIR)/pl-httpdate.log && exit $$PIPESTATUS)
	@echo "pl-httpdate finished $(shell date -R) "

pl-filelisting.o:
	@echo "pl-filelisting started $(shell date -R) "
	(make -C pl-filelisting 2>&1 | tee $(PKGLOGDIR)/pl-filelisting.log && exit $$PIPESTATUS)
	@echo "pl-filelisting finished $(shell date -R) "

pl-htmltagset.o:
	@echo "pl-htmltagset started $(shell date -R) "
	(make -C pl-htmltagset 2>&1 | tee $(PKGLOGDIR)/pl-htmltagset.log && exit $$PIPESTATUS)
	@echo "pl-htmltagset finished $(shell date -R) "

pl-htmlparser.o:
	@echo "pl-htmlparser started $(shell date -R) "
	(make -C pl-htmlparser 2>&1 | tee $(PKGLOGDIR)/pl-htmlparser.log && exit $$PIPESTATUS)
	@echo "pl-htmlparser finished $(shell date -R) "

pl-iohtml.o:
	@echo "pl-iohtml started $(shell date -R) "
	(make -C pl-iohtml 2>&1 | tee $(PKGLOGDIR)/pl-iohtml.log && exit $$PIPESTATUS)
	@echo "pl-iohtml finished $(shell date -R) "

pl-lwpmediatypes.o:
	@echo "pl-lwpmediatypes started $(shell date -R) "
	(make -C pl-lwpmediatypes 2>&1 | tee $(PKGLOGDIR)/pl-lwpmediatypes.log && exit $$PIPESTATUS)
	@echo "pl-lwpmediatypes finished $(shell date -R) "

pl-trytiny.o:
	@echo "pl-trytiny started $(shell date -R) "
	(make -C pl-trytiny 2>&1 | tee $(PKGLOGDIR)/pl-trytiny.log && exit $$PIPESTATUS)
	@echo "pl-trytiny finished $(shell date -R) "

pl-testneeds.o:
	@echo "pl-testneeds started $(shell date -R) "
	(make -C pl-testneeds 2>&1 | tee $(PKGLOGDIR)/pl-testneeds.log && exit $$PIPESTATUS)
	@echo "pl-testneeds finished $(shell date -R) "

pl-uri.o:
	@echo "pl-uri started $(shell date -R) "
	(make -C pl-uri 2>&1 | tee $(PKGLOGDIR)/pl-uri.log && exit $$PIPESTATUS)
	@echo "pl-uri finished $(shell date -R) "

pl-httpmessage.o:
	@echo "pl-httpmessage started $(shell date -R) "
	(make -C pl-httpmessage 2>&1 | tee $(PKGLOGDIR)/pl-httpmessage.log && exit $$PIPESTATUS)
	@echo "pl-httpmessage finished $(shell date -R) "

pl-httpcookies.o:
	@echo "pl-httpcookies started $(shell date -R) "
	(make -C pl-httpcookies 2>&1 | tee $(PKGLOGDIR)/pl-httpcookies.log && exit $$PIPESTATUS)
	@echo "pl-httpcookies finished $(shell date -R) "

pl-httpdaemon.o:
	@echo "pl-httpdaemon started $(shell date -R) "
	(make -C pl-httpdaemon 2>&1 | tee $(PKGLOGDIR)/pl-httpdaemon.log && exit $$PIPESTATUS)
	@echo "pl-httpdaemon finished $(shell date -R) "

pl-httpnegotiate.o:
	@echo "pl-httpnegotiate started $(shell date -R) "
	(make -C pl-httpnegotiate 2>&1 | tee $(PKGLOGDIR)/pl-httpnegotiate.log && exit $$PIPESTATUS)
	@echo "pl-httpnegotiate finished $(shell date -R) "

pl-nethttp.o:
	@echo "pl-nethttp started $(shell date -R) "
	(make -C pl-nethttp 2>&1 | tee $(PKGLOGDIR)/pl-nethttp.log && exit $$PIPESTATUS)
	@echo "pl-nethttp finished $(shell date -R) "

pl-testfatal.o:
	@echo "pl-testfatal started $(shell date -R) "
	(make -C pl-testfatal 2>&1 | tee $(PKGLOGDIR)/pl-testfatal.log && exit $$PIPESTATUS)
	@echo "pl-testfatal finished $(shell date -R) "

pl-testrequiresinternet.o:
	@echo "pl-testrequiresinternet started $(shell date -R) "
	(make -C pl-testrequiresinternet 2>&1 | tee $(PKGLOGDIR)/pl-testrequiresinternet.log && exit $$PIPESTATUS)
	@echo "pl-testrequiresinternet finished $(shell date -R) "

pl-wwwrobotrules.o:
	@echo "pl-wwwrobotrules started $(shell date -R) "
	(make -C pl-wwwrobotrules 2>&1 | tee $(PKGLOGDIR)/pl-wwwrobotrules.log && exit $$PIPESTATUS)
	@echo "pl-wwwrobotrules finished $(shell date -R) "

pl-libwww.o:
	@echo "pl-libwww started $(shell date -R) "
	(make -C pl-libwww 2>&1 | tee $(PKGLOGDIR)/pl-libwww.log && exit $$PIPESTATUS)
	@echo "pl-libwww finished $(shell date -R) "

pl-xmlparser.o:
	@echo "pl-xmlparser started $(shell date -R) "
	(make -C pl-xmlparser 2>&1 | tee $(PKGLOGDIR)/pl-xmlparser.log && exit $$PIPESTATUS)
	@echo "pl-xmlparser finished $(shell date -R) "

pl-develsymdump.o:
	@echo "pl-develsymdump started $(shell date -R) "
	(make -C pl-develsymdump 2>&1 | tee $(PKGLOGDIR)/pl-develsymdump.log && exit $$PIPESTATUS)
	@echo "pl-develsymdump finished $(shell date -R) "

pl-podcoverage.o:
	@echo "pl-podcoverage started $(shell date -R) "
	(make -C pl-podcoverage 2>&1 | tee $(PKGLOGDIR)/pl-podcoverage.log && exit $$PIPESTATUS)
	@echo "pl-podcoverage finished $(shell date -R) "

pl-testpodcoverage.o:
	@echo "pl-testpodcoverage started $(shell date -R) "
	(make -C pl-testpodcoverage 2>&1 | tee $(PKGLOGDIR)/pl-testpodcoverage.log && exit $$PIPESTATUS)
	@echo "pl-testpodcoverage finished $(shell date -R) "

pl-configfile.o:
	@echo "pl-configfile started $(shell date -R) "
	(make -C pl-configfile 2>&1 | tee $(PKGLOGDIR)/pl-configfile.log && exit $$PIPESTATUS)
	@echo "pl-configfile finished $(shell date -R) "

pl-xmlsimple.o:
	@echo "pl-xmlsimple started $(shell date -R) "
	(make -C pl-xmlsimple 2>&1 | tee $(PKGLOGDIR)/pl-xmlsimple.log && exit $$PIPESTATUS)
	@echo "pl-xmlsimple finished $(shell date -R) "

intltool.o:
	@echo "intltool started $(shell date -R) "
	(make -C intltool 2>&1 | tee $(PKGLOGDIR)/intltool.log && exit $$PIPESTATUS)
	@echo "intltool finished $(shell date -R) "

intltool-debian.o:
	@echo "intltool-debian started $(shell date -R) "
	(make -C intltool-debian 2>&1 | tee $(PKGLOGDIR)/intltool-debian.log && exit $$PIPESTATUS)
	@echo "intltool-debian finished $(shell date -R) "

po4a.o:
	@echo "po4a started $(shell date -R) "
	(make -C po4a 2>&1 | tee $(PKGLOGDIR)/po4a.log && exit $$PIPESTATUS)
	@echo "po4a finished $(shell date -R) "

fakeroot.o:
	@echo "fakeroot started $(shell date -R) "
	(make -C fakeroot 2>&1 | tee $(PKGLOGDIR)/fakeroot.log && exit $$PIPESTATUS)
	@echo "fakeroot finished $(shell date -R) "

dpkg.o:
	@echo "dpkg started $(shell date -R) "
	(make -C dpkg 2>&1 | tee $(PKGLOGDIR)/dpkg.log && exit $$PIPESTATUS)
	@echo "dpkg finished $(shell date -R) "

apt.o:
	@echo "apt started $(shell date -R) "
	(make -C apt 2>&1 | tee $(PKGLOGDIR)/apt.log && exit $$PIPESTATUS)
	@echo "apt finished $(shell date -R) "

debconf.o:
	@echo "debconf started $(shell date -R) "
	(make -C debconf 2>&1 | tee $(PKGLOGDIR)/debconf.log && exit $$PIPESTATUS)
	@echo "debconf finished $(shell date -R) "

po-debconf.o:
	@echo "po-debconf started $(shell date -R) "
	(make -C po-debconf 2>&1 | tee $(PKGLOGDIR)/po-debconf.log && exit $$PIPESTATUS)
	@echo "po-debconf finished $(shell date -R) "

debhelper.o:
	@echo "debhelper started $(shell date -R) "
	(make -C debhelper 2>&1 | tee $(PKGLOGDIR)/debhelper.log && exit $$PIPESTATUS)
	@echo "debhelper finished $(shell date -R) "

dh-make.o:
	@echo "dh-make started $(shell date -R) "
	(make -C dh-make 2>&1 | tee $(PKGLOGDIR)/dh-make.log && exit $$PIPESTATUS)
	@echo "dh-make finished $(shell date -R) "

dpkg-sig.o:
	@echo "dpkg-sig started $(shell date -R) "
	(make -C dpkg-sig 2>&1 | tee $(PKGLOGDIR)/dpkg-sig.log && exit $$PIPESTATUS)
	@echo "dpkg-sig finished $(shell date -R) "

#==================== End Cross Toolchain ============================================

clean:
	@for dir in `find -type d | grep -v '^.\$$' `; do \
		make -C $$dir clean ;\
	done ;\

PHONY: all host-tools host-pl pkgmgr x-compiler musl-extras xtools clean
