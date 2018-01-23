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
		cp -v $(PATCHDB)/config.sub $(PKGSRCDIR)/config || exit 1 ;\
		touch $(PKGOBJDIR)/patch-stamp ;\
	fi

autoconf: patch
	@if [ ! -f $(PKGOBJDIR)/autoconf-stamp  ]; then \
		cd $(PKGSRCDIR) ;\
		autoreconf -vif || exit 1 ;\
		touch $(PKGOBJDIR)/autoconf-stamp ;\
	fi

configure: autoconf 
	@if [ ! -f $(PKGOBJDIR)/configure-stamp  ]; then \
		cd $(PKGSRCDIR) ;\
		( PATH=$(PATH) CC=$(CC) CXX=$(CXX) $(PKGSRCDIR)/configure $(COPTS) ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		cd $(PKGSRCDIR)/include ;\
		$(HOST_CC) makemd5.c -o makemd5 || exit 1 ;\
		touch makemd5.o makemd5.lo makemd5 || exit 1 ;\
		( PATH=$(PATH) make -j$(NPROCS) -C $(PKGSRCDIR) ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGSRCDIR) DESTDIR=$(SYSROOTDIR) install ) || exit 1 ;\
		rm -v $(SYSROOTDIR)/usr/lib/libsasl2.la || exit 1 ;\
		rm -v $(SYSROOTDIR)/usr/lib/sasl2/*.la || exit 1 ;\
		install -vd -m 700 $(SYSROOTDIR)/var/lib/sasl || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/saslauthd.service $(SYSROOTDIR)/lib/systemd/system || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/default-saslauthd $(SYSROOTDIR)/etc/default/saslauthd || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/tmp-saslauthd.conf $(SYSROOTDIR)/usr/lib/tmpfiles.d/saslauthd.conf || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
