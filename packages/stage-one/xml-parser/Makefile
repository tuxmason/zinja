#include the shared config file
include ../../../conf/environment.mk
#include package specific config file
include ./config.mk

all: targets
targets: clean extract patch build install

extract:  
	@if [ ! -f $(PKGOBJDIR)/extract-stamp  ]; then \
		( tar -C $(TCBUILDROOT) -xf $(SRCDIR)/$(PKGSRC) ) || exit 1 ;\
		mkdir $(PKGOBJDIR) ;\
		touch $(PKGOBJDIR)/extract-stamp ;\
	fi

patch: extract  
	@if [ ! -f $(PKGOBJDIR)/patch-stamp  ]; then \
		if [ -f $(PATCHLIST) ]; then \
			for f in `cat $(PATCHLIST)` ; do \
				echo -e " --- Patch: $$f --- "  ;\
				( patch -d $(PKGSRCDIR) -p1 -i $(PATCHDIR)/$$f ) || exit 1  ;\
				echo -e " --- done --- \n"  ;\
			done ;\
		fi ;\
		touch $(PKGOBJDIR)/patch-stamp ;\
	fi

build: patch 
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		cd $(PKGSRCDIR) ;\
		( PATH=$(PATH) perl -v ) || exit 1 ;\
		( PATH=$(PATH) perl Makefile.PL ) || exit 1 ;\
		( PATH=$(PATH) make -j$(NPROCS) -C $(PKGSRCDIR) ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGSRCDIR) install ) || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -r $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -r $(PKGOBJDIR); fi

PHONY: all targets
