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
		mkdir -pv $(PKGBINDIR)/{bin,lib} ;\
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
		( ln -sv $(PKGSRCDIR)/* . ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) make -j$(NPROCS) CC=$(CC) AR="${AR}" RANLIB="${RANLIB}" -C $(PKGOBJDIR) -f Makefile-libbz2_so ) || exit 1 ;\
		( PATH=$(PATH) make -j$(NPROCS) -C $(PKGOBJDIR) clean ) || exit 1 ;\
		( PATH=$(PATH) make -j$(NPROCS) CC=$(CC) AR="${AR}" RANLIB="${RANLIB}" -C $(PKGOBJDIR) ) || exit 1 ;\
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
		( PATH=$(PATH) make -C $(PKGOBJDIR) PREFIX=$(SYSROOTDIR)/usr install ) || exit 1 ;\
		( install -v $(PKGOBJDIR)/bzip2-shared $(SYSROOTDIR)/bin/bzip2 ) || exit 1 ;\
		( cp -va $(PKGOBJDIR)/libbz2.so* $(SYSROOTDIR)/lib ) || exit 1 ;\
		ln -svf ../../lib/libbz2.so.1.0 $(SYSROOTDIR)/usr/lib/libbz2.so || exit 1 ;\
		touch $(PKGOBJDIR)/install-sysroot-stamp ;\
	fi

install-pkgroot: pkg-src
	@if [ ! -f $(PKGOBJDIR)/install-pkgroot-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGOBJDIR) PREFIX=$(PKGBINDIR)/usr install ) || exit 1 ;\
		( install -v $(PKGOBJDIR)/bzip2-shared $(PKGBINDIR)/bin/bzip2 ) || exit 1 ;\
		( cp -va $(PKGOBJDIR)/libbz2.so* $(PKGBINDIR)/lib ) || exit 1 ;\
		ln -svf ../../lib/libbz2.so.1.0 $(PKGBINDIR)/usr/lib/libbz2.so || exit 1 ;\
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
			libbz2_$(PKGVER)-1_$(PKGARCH).deb \
			bzip2_$(PKGVER)-1_$(PKGARCH).deb \
			libbz2-dev_$(PKGVER)-1_$(PKGARCH).deb \
			bzip2-doc_$(PKGVER)-1_all.deb ) || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkg-stamp ;\
	fi

clean:
	@if [ -d $(PKGROOT) ]; then rm -rf $(PKGROOT); fi
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets install-deps
