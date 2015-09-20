#include general config file
include ../../conf/environment.mk

all: cross-tools

cross-tools: bc.o kheaders.o file.o m4.o ncurses.o u-boot-tools.o gmp.o mpfr.o mpc.o \
	binutils.o gcc-stage1.o uClibc.o gcc-stage2.o

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

u-boot-tools.o: 
	@echo "U-boot tools started $(shell date -R) "
	( make -C u-boot-tools 2>&1 | tee $(PKGLOGDIR)/u-boot-tools.log && exit $$PIPESTATUS )
	@echo "U-boot tools finished $(shell date -R) "

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

binutils.o: 
	@echo "Binutils started $(shell date -R) "
	( make -C binutils 2>&1 | tee $(PKGLOGDIR)/binutils.log && exit $$PIPESTATUS )
	@echo "Binutils finished $(shell date -R) "

gcc-stage1.o:
	@echo "GCC (Stage One) started $(shell date -R) "
	( make -C gcc-stage1 2>&1  | tee $(PKGLOGDIR)/gcc-stage1.log && exit $$PIPESTATUS )
	@echo "GCC (Stage One) finished $(shell date -R) "

uClibc.o:
	@echo "uClibc started $(shell date -R) "
	( make -C uClibc 2>&1  | tee $(PKGLOGDIR)/uClibc.log && exit $$PIPESTATUS )
	@echo "uClibc finished $(shell date -R) "

gcc-stage2.o:
	@echo "GCC (Stage Two) started $(shell date -R) "
	( make -C gcc-stage2 2>&1  | tee $(PKGLOGDIR)/gcc-stage2.log && exit $$PIPESTATUS )
	@echo "GCC (Stage Two) finished $(shell date -R) "

#==================== End Cross Toolchain ============================================

clean:
	@for dir in `find -type d | grep -v '^.\$$' `; do \
		make -C $$dir clean ;\
	done ;\

PHONY: all cross-tools
