#include general config file
include ../../conf/environment.mk

all: cross-tools

cross-tools: bc.o kheaders.o file.o m4.o ncurses.o pkg-config-lite.o \
	perl.o xml-parser.o whois.o gmp.o mpfr.o mpc.o isl.o binutils.o \
	gcc-stage1.o musl.o gcc-stage2.o musl-locales.o musl-fts.o \
	musl-obstack.o timezone.o argp-standalone.o

#==================== Cross Toolchain ================================================
bc.o: 
	@echo "Bc started $(shell date -R) "
	( make -C bc 2>&1 | tee $(PKGLOGDIR)/bc.log && exit $$PIPESTATUS )
	@echo "Bc finished $(shell date -R) "

kheaders.o:
	@echo "Linux kernel headers started $(shell date -R) "
	( make -C kheaders  2>&1  | tee $(PKGLOGDIR)/kheaders.log && exit $$PIPESTATUS )
	@echo "Linux kernel headers finished $(shell date -R) "

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

pkg-config-lite.o: 
	@echo "Pkg-config-lite started $(shell date -R) "
	( make -C pkg-config-lite 2>&1 | tee $(PKGLOGDIR)/pkg-config-lite.log && exit $$PIPESTATUS )
	@echo "Pkg-config-lite finished $(shell date -R) "

perl.o: 
	@echo "Perl started $(shell date -R) "
	( make -C perl 2>&1 | tee $(PKGLOGDIR)/perl.log && exit $$PIPESTATUS )
	@echo "Perl finished $(shell date -R) "

xml-parser.o: 
	@echo "XML-Parser started $(shell date -R) "
	( make -C xml-parser 2>&1 | tee $(PKGLOGDIR)/xml-parser.log && exit $$PIPESTATUS )
	@echo "XML-Parser finished $(shell date -R) "

whois.o: 
	@echo "whois started $(shell date -R) "
	( make -C whois 2>&1 | tee $(PKGLOGDIR)/whois.log && exit $$PIPESTATUS )
	@echo "whois finished $(shell date -R) "

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

musl.o:
	@echo "Musl lib C started $(shell date -R) "
	( make -C musl 2>&1  | tee $(PKGLOGDIR)/musl.log && exit $$PIPESTATUS )
	@echo "Musl lib C finished $(shell date -R) "

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

#==================== End Cross Toolchain ============================================

clean:
	@for dir in `find -type d | grep -v '^.\$$' `; do \
		make -C $$dir clean ;\
	done ;\

PHONY: all cross-tools
