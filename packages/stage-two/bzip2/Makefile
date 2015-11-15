#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch configure build install

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
				( patch -d $(PKGSRCDIR) -p1 -i $(PATCHDIR)/$$f ) || exit 1 ;\
				echo -e " --- done --- \n"  ;\
			done ;\
		fi ;\
		touch $(PKGOBJDIR)/patch-stamp ;\
	fi

configure: patch
	@if [ ! -f $(PKGOBJDIR)/configure-stamp  ]; then \
		cd $(PKGOBJDIR) ;\
		( ln -sv $(PKGSRCDIR)/* . ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) make -j$(NPROCS) CC=$(CC) AR="${AR}" RANLIB="${RANLIB}" -C $(PKGOBJDIR) -f Makefile-libbz2_so ) || exit 1 ;\
		( PATH=$(PATH) make -j$(NPROCS) -C $(PKGOBJDIR) clean ) || exit 1 ;\
		( PATH=$(PATH) make -j$(NPROCS) CC=$(CC) AR="${AR}" RANLIB="${RANLIB}" -C $(PKGOBJDIR) ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGOBJDIR) PREFIX=$(SYSROOTDIR)/usr install ) || exit 1 ;\
		( install -v $(PKGOBJDIR)/bzip2-shared $(SYSROOTDIR)/bin/bzip2 ) || exit 1 ;\
		( cp -va $(PKGOBJDIR)/libbz2.so* $(SYSROOTDIR)/lib ) || exit 1 ;\
		ln -svf ../../lib/libbz2.so.1.0 $(SYSROOTDIR)/usr/lib/libbz2.so || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
