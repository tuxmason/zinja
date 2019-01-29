#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch configure build pkg-src install-bin build-pkg install-pkg

extract:
	@if [ ! -f $(PKGOBJDIR)/extract-stamp  ]; then \
		( tar -C $(TCBUILDROOT) -xf $(SRCDIR)/$(PKGSRC) ) || exit 1 ;\
		mv -v $(TCBUILDROOT)/$(PKGNAME) $(PKGSRCDIR) || exit 1 ;\
		mkdir $(PKGOBJDIR) $(PKGOBJDIR-LIB) ;\
		mkdir -pv $(PKGBINDIR)/usr/{lib,include/unrar,share/man/man1} ;\
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
		ln -sv $(PKGSRCDIR)/* -t $(PKGOBJDIR) || exit 1 ;\
		ln -sv $(PKGSRCDIR)/* -t $(PKGOBJDIR-LIB) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: build-bin build-lib

build-bin: configure
	@if [ ! -f $(PKGOBJDIR)/build-bin-stamp  ]; then \
		cd $(PKGOBJDIR) ;\
		( PATH=$(PATH) make -j$(NPROCS) -f makefile AR=$(AR) CXX=$(CXX) ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-bin-stamp ;\
	fi

build-lib: configure
	@if [ ! -f $(PKGOBJDIR-LIB)/build-lib-stamp  ]; then \
		cd $(PKGOBJDIR-LIB) ;\
		( PATH=$(PATH) make -j$(NPROCS) -f makefile AR=$(AR) CXX=$(CXX) lib ) || exit 1 ;\
		touch $(PKGOBJDIR-LIB)/build-lib-stamp ;\
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

install: install-lib install-bin

install-lib: pkg-src
	@if [ ! -f $(PKGOBJDIR-LIB)/install-lib-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGOBJDIR-LIB) DESTDIR=$(PKGBINDIR)/usr install-lib ) || exit 1 ;\
		install -m 644 $(PKGSRCDIR)/dll.hpp $(PKGBINDIR)/usr/include/unrar/dll.hpp || exit 1 ;\
		touch $(PKGOBJDIR-LIB)/install-lib-stamp ;\
	fi

install-bin: pkg-src
	@if [ ! -f $(PKGOBJDIR)/install-bin-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(PKGBINDIR)/usr install ) || exit 1 ;\
		cp -v $(PATCHDIR)/unrar-free.1 $(PKGBINDIR)/usr/share/man/man1/ || exit 1 ;\
		touch $(PKGOBJDIR)/install-bin-stamp ;\
	fi

build-pkg: install
	@if [ ! -f $(PKGOBJDIR)/build-pkg-stamp  ]; then \
		cd $(DISTRIBSRC) ;\
		( PATH=$(PATH) dpkg-buildpackage -us -uc -d -a $(PKGARCH) --source-option=--include-binaries ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-pkg-stamp ;\
	fi

install-pkg: build-pkg
	@if [ ! -f $(PKGOBJDIR)/install-pkg-stamp  ]; then \
		cd $(PKGROOT) ;\
		( PATH=$(PATH) fakeroot dpkg --root=$(SYSROOTDIR) --admindir=$(PKGADMINDIR) -i \
			lib$(PKGNAME)_$(PKGVER)-1_$(PKGARCH).deb \
			$(PKGNAME)_$(PKGVER)-1_$(PKGARCH).deb \
			lib$(PKGNAME)-dev_$(PKGVER)-1_$(PKGARCH).deb \
			$(PKGNAME)-doc_$(PKGVER)-1_all.deb ) || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkg-stamp ;\
	fi

clean:
	@if [ -d $(PKGROOT) ]; then rm -rf $(PKGROOT); fi
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi
	@if [ -d $(PKGOBJDIR-LIB) ]; then rm -rf $(PKGOBJDIR-LIB); fi

PHONY: all build install targets
