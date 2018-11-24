#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch autoconf configure build pkg-src install-deps build-pkg install-pkg

extract:
	@if [ ! -f $(PKGOBJDIR)/extract-stamp  ]; then \
		( tar -C $(TCBUILDROOT) -xf $(SRCDIR)/$(PKGSRC) ) || exit 1 ;\
		mkdir $(PKGOBJDIR) || exit 1 ;\
		mkdir -p $(PKGBINDIR)/etc/default || exit 1 ;\
		mkdir -p $(PKGBINDIR)/usr/lib/tmpfiles.d || exit 1 ;\
		mkdir -p $(PKGBINDIR)/lib/systemd/system || exit 1 ;\
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

build: build-host build-target

build-host: configure
	@if [ ! -f $(PKGOBJDIR)/build-host-stamp  ]; then \
		cd $(PKGSRCDIR)/include ;\
		$(HOST_CC) makemd5.c -o makemd5 || exit 1 ;\
		touch makemd5.o makemd5.lo makemd5 || exit 1 ;\
		touch $(PKGOBJDIR)/build-host-stamp ;\
	fi

build-target: build-host
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) make -j$(NPROCS) -C $(PKGSRCDIR) ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

pkg-src: build-target
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
		( PATH=$(PATH) make -C $(PKGSRCDIR) DESTDIR=$(SYSROOTDIR) install ) || exit 1 ;\
		rm -v $(SYSROOTDIR)/usr/lib/libsasl2.la || exit 1 ;\
		rm -v $(SYSROOTDIR)/usr/lib/sasl2/*.la || exit 1 ;\
		install -vd -m 700 $(SYSROOTDIR)/var/lib/sasl || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/saslauthd.service $(SYSROOTDIR)/lib/systemd/system || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/default-saslauthd $(SYSROOTDIR)/etc/default/saslauthd || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/tmp-saslauthd.conf $(SYSROOTDIR)/usr/lib/tmpfiles.d/saslauthd.conf || exit 1 ;\
		touch $(PKGOBJDIR)/install-sysroot-stamp ;\
	fi

install-pkgroot: pkg-src
	@if [ ! -f $(PKGOBJDIR)/install-pkgroot-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGSRCDIR) DESTDIR=$(PKGBINDIR) install ) || exit 1 ;\
		rm -v $(PKGBINDIR)/usr/lib/libsasl2.la || exit 1 ;\
		rm -v $(PKGBINDIR)/usr/lib/sasl2/*.la || exit 1 ;\
		install -vd -m 700 $(PKGBINDIR)/var/lib/sasl || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/saslauthd.service $(PKGBINDIR)/lib/systemd/system || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/default-saslauthd $(PKGBINDIR)/etc/default/saslauthd || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/tmp-saslauthd.conf $(PKGBINDIR)/usr/lib/tmpfiles.d/saslauthd.conf || exit 1 ;\
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
			libsasl2_$(PKGVER)-1_$(PKGARCH).deb \
			cyrus-sasl_$(PKGVER)-1_$(PKGARCH).deb \
			libsasl2-dev_$(PKGVER)-1_$(PKGARCH).deb \
			cyrus-sasl-doc_$(PKGVER)-1_all.deb ) || exit 1 ;\
		cat $(SYSROOTDIR)/var/lib/dpkg/info/*.shlibs > $(CROSSTOOLS)/etc/dpkg/shlibs.default || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkg-stamp ;\
	fi

clean:
	@if [ -d $(PKGROOT) ]; then rm -rf $(PKGROOT); fi
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all build targets install-deps
