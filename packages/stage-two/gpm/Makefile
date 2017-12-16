#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch autoconf configure build install

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

autoconf: patch
	@if [ ! -f $(PKGOBJDIR)/autoconf-stamp  ]; then \
		cd $(PKGSRCDIR) ;\
		./autogen.sh || exit 1 ;\
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
		( PATH=$(PATH) make -C $(PKGSRCDIR) ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGSRCDIR) DESTDIR=$(SYSROOTDIR) install ) || exit 1 ;\
		ln -sfv libgpm.so.2 $(SYSROOTDIR)/usr/lib/libgpm.so || exit 1 ;\
		install -v -m644 $(PKGSRCDIR)/conf/gpm-root.conf $(SYSROOTDIR)/etc || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/$(PKGNAME).service $(SYSROOTDIR)/lib/systemd/system || exit 1 ;\
		ln -svf /lib/systemd/system/$(PKGNAME).service $(SYSROOTDIR)/etc/systemd/system/multi-user.target.wants/$(PKGNAME).service || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
