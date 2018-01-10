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
		mkdir $(WPKGOBJDIR) ;\
		mkdir $(NWPKGOBJDIR) ;\
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

configure: configure-wc

configure-wc: patch
	@if [ ! -f $(PKGOBJDIR)/configure-wc-stamp  ]; then \
		cd $(WPKGOBJDIR) ;\
		( PATH=$(PATH) CC=$(CC) CXX=$(CXX) $(PKGSRCDIR)/configure $(COPTS) $(WCOPTS) ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-wc-stamp ;\
	fi

configure-nwc: patch
	@if [ ! -f $(PKGOBJDIR)/configure-nwc-stamp  ]; then \
		cd $(NWPKGOBJDIR) ;\
		( PATH=$(PATH) CC=$(CC) CXX=$(CXX) $(PKGSRCDIR)/configure $(COPTS) $(NWCOPTS) ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-nwc-stamp ;\
	fi

build: build-wc

build-wc: configure-wc
	@if [ ! -f $(PKGOBJDIR)/build-wc-stamp  ]; then \
		( PATH=$(PATH) make -j$(NPROCS) -C $(WPKGOBJDIR) ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-wc-stamp ;\
	fi

build-nwc: configure-nwc
	@if [ ! -f $(PKGOBJDIR)/build-nwc-stamp  ]; then \
		( PATH=$(PATH) make -j$(NPROCS) -C $(NWPKGOBJDIR) ) || exit 1 ;\
		cd $(NWPKGOBJDIR)/misc && /bin/sh gen-pkgconfig || exit 1 ;\
		touch $(PKGOBJDIR)/build-nwc-stamp ;\
	fi

install: install-wc

install-wc: build-wc
	@if [ ! -f $(PKGOBJDIR)/install-wc-stamp  ]; then \
		( PATH=$(PATH) make -C $(WPKGOBJDIR) DESTDIR=$(SYSROOTDIR) install ) || exit 1 ;\
		for lib in ncursesw formw panelw menuw ; do \
			rm -v $(SYSROOTDIR)/lib/lib$${lib}.so || exit 1 ;\
			mv -v $(SYSROOTDIR)/lib/lib$${lib}.a $(SYSROOTDIR)/usr/lib || exit 1 ;\
			ln -sfv ../../lib/lib$${lib}.so.6 $(SYSROOTDIR)/usr/lib/lib$${lib}.so || exit 1 ;\
		done ;\
		for lib in ncurses form panel menu ; do \
			echo "INPUT(-l$${lib}w)" > $(SYSROOTDIR)/usr/lib/lib$${lib}.so || exit 1 ;\
			ln -sfv lib$${lib}w.a $(SYSROOTDIR)/usr/lib/lib$${lib}.a || exit 1 ;\
		done ;\
		ln -sfv ncursesw6-config $(SYSROOTDIR)/usr/bin/ncurses6-config || exit 1 ;\
		touch $(PKGOBJDIR)/install-wc-stamp ;\
	fi

install-nwc: build-nwc
	@if [ ! -f $(PKGOBJDIR)/install-nwc-stamp  ]; then \
		cp -av $(NWPKGOBJDIR)/lib/lib*.so.5* $(SYSROOTDIR)/lib || exit 1 ;\
		for lib in ncurses form panel menu ; do \
			ln -sfv ../../lib/lib$${lib}.so.5 $(SYSROOTDIR)/usr/lib/lib$${lib}.so || exit 1 ;\
		done ;\
		install -v -m 0644 $(NWPKGOBJDIR)/misc/*.pc $(SYSROOTDIR)/usr/lib/pkgconfig || exit 1 ;\
		install -v -m 0755 $(NWPKGOBJDIR)/misc/ncurses-config $(SYSROOTDIR)/usr/bin/ncurses6-config || exit 1 ;\
		touch $(PKGOBJDIR)/install-nwc-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi
	@if [ -d $(WPKGOBJDIR) ]; then rm -rf $(WPKGOBJDIR); fi
	@if [ -d $(NWPKGOBJDIR) ]; then rm -rf $(NWPKGOBJDIR); fi

PHONY: all configure build install targets
