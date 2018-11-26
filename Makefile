##########################################################################
#
## Filename: Makefile 
#
## Purpose: zinja top level makefile
#
## Copyright (c) 2007 - 2018 Mwanguhya Daniel Murungi <tuxmason@gmail.com>
#
##########################################################################

# Include user preferences 
include conf/vendor.inc

ifeq ($(ARCH),arm)
	include conf/config.arm.inc
endif

ifeq ($(ARCH),aarch64)
	include conf/config.aarch64.inc
endif

ifeq ($(ARCH),x86_64)
	include conf/config.x86_64.inc
endif

include conf/Makefile.config

all: base

base: xtools core

xtools: config
	make -C packages/stage-one

core:
	make -C packages/stage-two

misc: 
	make -C packages/misc

distclean:
	@if [ -d $(DISTRIBROOT) ]; then rm -rf $(DISTRIBROOT) ; fi
	@if [ -d $(TCBUILDROOT) ]; then rm -rf $(TCBUILDROOT) ; fi
	@if [ -d $(SYSROOTDIR) ]; then rm -rf $(SYSROOTDIR) ; fi
	@if [ -d $(CROSSTOOLS) ]; then rm -rf $(CROSSTOOLS) ; fi
	@if [ -f $(CONF) ]; then rm $(CONF) ; fi

clean: distclean
	
PHONY: all xtools base clean
