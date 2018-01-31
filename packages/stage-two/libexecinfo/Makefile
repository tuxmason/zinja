#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

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
				( patch -d $(PKGSRCDIR) -p1 -i $(PATCHDIR)/$$f ) || exit 1 ;\
				echo -e " --- done --- \n"  ;\
			done ;\
		fi ;\
		touch $(PKGOBJDIR)/patch-stamp ;\
	fi

build: patch
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		ln -sv $(PKGSRCDIR)/* $(PKGOBJDIR)/ ;\
		( PATH=$(PATH) make -j$(NPROCS) -C $(PKGOBJDIR) CC=$(CC) CXX=$(CXX) ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		install -v -m644 $(PKGSRCDIR)/execinfo.h $(SYSROOTDIR)/usr/include/execinfo.h || exit 1 ;\
		install -v -m644 $(PKGOBJDIR)/libexecinfo.a $(SYSROOTDIR)/usr/lib/libexecinfo.a || exit 1 ;\
		install -v -m755 $(PKGOBJDIR)/libexecinfo.so.1 $(SYSROOTDIR)/usr/lib/libexecinfo.so.1 || exit 1 ;\
		install -v -m644 $(PKGSRCDIR)/stacktraverse.h $(SYSROOTDIR)/usr/include/stacktraverse.h || exit 1 ;\
		ln -svf libexecinfo.so.1 $(SYSROOTDIR)/usr/lib/libexecinfo.so || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
