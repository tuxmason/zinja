#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch configure build pkg-src install-deps build-pkg install-pkg

extract:
	@if [ ! -f $(PKGOBJDIR)/extract-stamp  ]; then \
		( tar -C $(TCBUILDROOT) -xf $(SRCDIR)/$(PKGSRC) ) || exit 1 ;\
		mkdir $(PKGOBJDIR) ;\
		mkdir -pv $(PKGBINDIR) ;\
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
		( cp -v $(PATCHDIR)/$(PKGNAME).cache $(PKGOBJDIR) ) || exit 1 ;\
		touch $(PKGOBJDIR)/patch-stamp ;\
	fi

configure: patch
	@if [ ! -f $(PKGOBJDIR)/configure-stamp  ]; then \
		cd $(PKGOBJDIR) ;\
		( PATH=$(PATH) CC=$(CC) CXX=$(CXX) $(PKGSRCDIR)/configure $(COPTS) ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) make -j$(NPROCS) -C $(PKGOBJDIR) V=1 ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

pkg-src: build
	@if [ ! -f $(PKGOBJDIR)/pkg-src-stamp  ]; then \
		cd $(PKGROOT) ;\
		cp -rv $(PKGDIR)/* $(DISTRIBSRC)/debian || exit 1 ;\
		sed -i -e "s@ARCH@$(PKGARCH)@g" $(DISTRIBSRC)/debian/control || exit 1 ;\
		sed -i -e "s@PKGVER@$(PKGVER)@g" $(DISTRIBSRC)/debian/changelog || exit 1 ;\
		tar cvfJ $(ORIGSRC) $(PKGNAME)-$(PKGVER) || exit 1 ;\
		touch $(PKGOBJDIR)/pkg-src-stamp ;\
	fi

install-deps: install-sysroot install-pkgroot

install-sysroot: pkg-src
	@if [ ! -f $(PKGOBJDIR)/install-sysroot-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(SYSROOTDIR) install ) || exit 1 ;\
		rm -v $(SYSROOTDIR)/usr/lib/{libgettextlib.la,libgettextpo.la} || exit 1 ;\
		rm -v $(SYSROOTDIR)/usr/lib/{libgettextsrc.la,libasprintf.la} || exit 1 ;\
		touch $(PKGOBJDIR)/install-sysroot-stamp ;\
	fi

install-pkgroot: pkg-src
	@if [ ! -f $(PKGOBJDIR)/install-pkgroot-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(PKGBINDIR) install ) || exit 1 ;\
		rm -v $(PKGBINDIR)/usr/lib/{libgettextlib.la,libgettextpo.la} || exit 1 ;\
		rm -v $(PKGBINDIR)/usr/lib/{libgettextsrc.la,libasprintf.la} || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkgroot-stamp ;\
	fi

build-pkg: install-deps
	@if [ ! -f $(PKGOBJDIR)/build-pkg-stamp  ]; then \
		cd $(DISTRIBSRC) ;\
		( PATH=$(PATH) dpkg-buildpackage -us -uc -d -a $(PKGARCH) --source-option=--include-binaries ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-pkg-stamp ;\
	fi

install-pkg: build-pkg
	@if [ ! -f $(PKGOBJDIR)/install-pkg-stamp  ]; then \
		cd $(PKGROOT) ;\
		( PATH=$(PATH) fakeroot dpkg --root=$(SYSROOTDIR) --admindir=$(PKGADMINDIR) -i \
			gettext_$(PKGVER)-1_$(PKGARCH).deb \
			gettext-dev_$(PKGVER)-1_$(PKGARCH).deb \
			gettext-doc_$(PKGVER)-1_all.deb ) || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkg-stamp ;\
	fi

clean:
	@if [ -d $(PKGROOT) ]; then rm -rf $(PKGROOT); fi
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets install-deps
