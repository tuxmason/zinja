##########################################################################
#
## Filename: Makefile 
#
## Purpose: top level make file for tuxmason
#
## Copyright (c) 2007 - 2012 Mwanguhya Daniel Murungi <tuxmason@gmail.com>
#
##########################################################################

# Include user preferences 
include conf/config.inc
include conf/Makefile.config

all: base

base: cross-tools core

cross-tools: config
	make -C packages/stage-one

core:
	make -C packages/stage-two

misc: 
	make -C packages/misc

distclean:
	@if [ -d $(TCBUILDROOT) ]; then rm -rf $(TCBUILDROOT) ; fi
	@if [ -d $(SYSROOTDIR) ]; then rm -rf $(SYSROOTDIR) ; fi
	@if [ -d $(CROSSTOOLS) ]; then rm -rf $(CROSSTOOLS) ; fi
	@if [ -f $(CONF) ]; then rm $(CONF) ; fi

clean: distclean
	
PHONY: all base clean
