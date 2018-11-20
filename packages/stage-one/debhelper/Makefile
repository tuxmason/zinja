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
		( mv $(TCBUILDROOT)/$(PKGNAME) $(PKGSRCDIR) ) || exit 1 ;\
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
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGSRCDIR) PERL=$(PERL) PREFIX=$(CROSSTOOLS) PERLLIBDIR="$(PERL_LIBDIR)/Debian/Debhelper" install ) || exit 1 ;\
		find $(CROSSTOOLS)/bin/dh* -type f -exec sed -i -e "s@/usr/bin/perl@$(CROSSTOOLS)/bin/perl@g" "{}" \; || exit 1 ;\
		sed -i -e "s@\"objcopy\"@\"$(TARGETARCH)-objcopy\"@g" $(CROSSTOOLS)/bin/dh_strip || exit 1 ;\
		sed -i -e "s@\"strip\"@\"$(TARGETARCH)-strip\"@g" $(CROSSTOOLS)/bin/dh_strip || exit 1 ;\
		find $(PERL_LIBDIR)/Debian -type f -exec sed -i -e "s@/usr/bin/perl@$(CROSSTOOLS)/bin/perl@g" "{}" \; || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
