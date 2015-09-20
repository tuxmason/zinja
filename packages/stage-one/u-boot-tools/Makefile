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
		( PATH=$(PATH) make ARCH=$(ARCH) HOSTCC=$(HOSTCC) CROSS_COMPILE="" O=$(PKGOBJDIR) -C $(PKGSRCDIR) odroidc_config ) || exit 1 ;\
		( PATH=$(PATH) make ARCH=$(ARCH) HOSTCC=$(HOSTCC) CROSS_COMPILE="" O=$(PKGOBJDIR) -C $(PKGSRCDIR) tools  ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		install -v -m 755 $(PKGOBJDIR)/tools/mkimage $(CROSSTOOLS)/bin || exit 1 ;\
		install -v -m 755 $(PKGOBJDIR)/tools/img2srec $(CROSSTOOLS)/bin || exit 1 ;\
		install -v -m 755 $(PKGOBJDIR)/tools/uclpack $(CROSSTOOLS)/bin || exit 1 ;\
		install -v -m 755 $(PKGOBJDIR)/tools/gen_eth_addr $(CROSSTOOLS)/bin || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -r $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -r $(PKGOBJDIR); fi

PHONY: all targets
