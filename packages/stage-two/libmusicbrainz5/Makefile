#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch configure-host build-host configure build pkg-src install-bin build-pkg install-pkg

extract:
	@if [ ! -f $(PKGOBJDIR)/extract-stamp  ]; then \
		( tar -C $(TCBUILDROOT) -xf $(SRCDIR)/$(PKGSRC) ) || exit 1 ;\
		mkdir $(PKGOBJDIR) $(PKGOBJDIR-HOST) ;\
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
		touch $(PKGOBJDIR)/patch-stamp ;\
	fi

configure-host: patch
	@if [ ! -f $(PKGOBJDIR-HOST)/configure-host-stamp  ]; then \
		cd $(PKGOBJDIR-HOST) ;\
		( PATH=$(PATH) CC=$(CC) CXX=$(CXX) cmake -G "Unix Makefiles" \
			$(HOST-COPTS) $(PKGSRCDIR) ) || exit 1 ;\
		touch $(PKGOBJDIR-HOST)/configure-stamp ;\
	fi

build-host: configure-host
	@if [ ! -f $(PKGOBJDIR-HOST)/build-host-stamp  ]; then \
		cd $(PKGOBJDIR-HOST) ;\
		( PATH=$(PATH) make -j$(NPROCS) -C $(PKGOBJDIR-HOST) make-c-interface ) || exit 1 ;\
		touch $(PKGOBJDIR-HOST)/build-host-stamp ;\
	fi

configure: build-host
	@if [ ! -f $(PKGOBJDIR)/configure-stamp  ]; then \
		cd $(PKGOBJDIR) ;\
		( PATH=$(PATH) CC=$(CC) CXX=$(CXX) cmake -G "Unix Makefiles" \
			$(TARGET-COPTS) $(PKGSRCDIR) ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		cd $(PKGOBJDIR) ;\
		( PATH=$(PATH) make -j$(NPROCS) -C $(PKGOBJDIR) ) || exit 1 ;\
		( PATH=$(PATH) doxygen $(PKGSRCDIR)/Doxyfile ) || exit 1 ;\
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

install-bin: pkg-src
	@if [ ! -f $(PKGOBJDIR)/install-bin-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(PKGBINDIR) install ) || exit 1 ;\
		touch $(PKGOBJDIR)/install-bin-stamp ;\
	fi

build-pkg: install-bin
	@if [ ! -f $(PKGOBJDIR)/build-pkg-stamp  ]; then \
		cd $(DISTRIBSRC) ;\
		( PATH=$(PATH) dpkg-buildpackage -us -uc -d -a $(PKGARCH) --source-option=--include-binaries ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-pkg-stamp ;\
	fi

install-pkg: build-pkg
	@if [ ! -f $(PKGOBJDIR)/install-pkg-stamp  ]; then \
		cd $(PKGROOT) ;\
		( PATH=$(PATH) fakeroot dpkg --root=$(SYSROOTDIR) --admindir=$(PKGADMINDIR) -i \
			$(PKGNAME)5_$(PKGVER)-1_$(PKGARCH).deb \
			$(PKGNAME)5-dev_$(PKGVER)-1_$(PKGARCH).deb ) || exit 1 ;\
		cat $(SYSROOTDIR)/var/lib/dpkg/info/*.shlibs > $(CROSSTOOLS)/etc/dpkg/shlibs.default || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkg-stamp ;\
	fi

clean:
	@if [ -d $(PKGROOT) ]; then rm -rf $(PKGROOT); fi
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi
	@if [ -d $(PKGOBJDIR-HOST) ]; then rm -rf $(PKGOBJDIR-HOST); fi

PHONY: all targets
