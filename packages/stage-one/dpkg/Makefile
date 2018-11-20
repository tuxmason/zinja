#include the shared config file
include ../../../conf/environment.mk

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
		( PATH=$(PATH) PERL_LIBDIR=$(PERL_LIBDIR) PERL=$(PERL) $(PKGSRCDIR)/configure $(COPTS) ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) PERL_LIBDIR=$(PERL_LIBDIR) PERL=$(PERL)  make -j$(NPROCS) -C $(PKGOBJDIR) ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		( PATH=$(PATH) PERL_LIBDIR=$(PERL_LIBDIR) PERL=$(PERL) make -C $(PKGOBJDIR) install ) || exit 1 ;\
		sed -i -e "s@/lib /usr/lib@$(SYSROOTDIR)/lib $(SYSROOTDIR)/usr/lib@g" $(PERL_LIBDIR)/Dpkg/Shlibs.pm || exit 1 ;\
		install -vd $(CROSSTOOLS)/etc/dpkg/origins || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/default $(CROSSTOOLS)/etc/dpkg/origins || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/zinja $(CROSSTOOLS)/etc/dpkg/origins || exit 1 ;\
		touch $(CROSSTOOLS)/bin/ldconfig && chmod +x $(CROSSTOOLS)/bin/ldconfig || exit 1 ;\
		touch $(SYSROOTDIR)/var/lib/dpkg/status || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
