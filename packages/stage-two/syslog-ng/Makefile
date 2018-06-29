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
		mkdir $(PKGOBJDIR) ;\
		mkdir -p $(PKGBINDIR)/etc/default || exit 1 ;\
		mkdir -p $(PKGBINDIR)/lib/systemd/system || exit 1 ;\
		mkdir -p $(PKGBINDIR)/etc/systemd/system/multi-user.target.wants || exit 1 ;\
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
		autoreconf -vif || exit 1 ;\
		touch $(PKGOBJDIR)/autoconf-stamp ;\
	fi

configure: autoconf
	@if [ ! -f $(PKGOBJDIR)/configure-stamp  ]; then \
		cd $(PKGOBJDIR) ;\
		( PATH=$(PATH) CC=$(CC) CXX=$(CXX) CPPFLAGS=$(CPPFLAGS) LDFLAGS=$(LDFLAGS) \
			$(PKGSRCDIR)/configure $(COPTS) ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) make -j$(NPROCS) -C $(PKGOBJDIR) ) || exit 1 ;\
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
		rm -v $(SYSROOTDIR)/usr/lib/{libevtlog,libsyslog-ng}.la || exit 1 ;\
		rm -v $(SYSROOTDIR)/usr/lib/syslog-ng/*.la || exit 1 ;\
		cp -vf $(PATCHDIR)/syslog-ng.conf $(SYSROOTDIR)/etc/syslog-ng/syslog-ng.conf || exit 1 ;\
		cat $(PKGSRCDIR)/contrib/systemd/syslog-ng\@default | sed -e "s@etc/@&syslog-ng/@" > $(SYSROOTDIR)/etc/default/syslog-ng || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/syslog-ng.service $(SYSROOTDIR)/lib/systemd/system || exit 1 ;\
		ln -svf /lib/systemd/system/syslog-ng.service $(SYSROOTDIR)/lib/systemd/system/syslog.service || exit 1 ;\
		ln -svf /lib/systemd/system/syslog-ng.service $(SYSROOTDIR)/etc/systemd/system/syslog.service || exit 1 ;\
		ln -svf /lib/systemd/system/syslog-ng.service $(SYSROOTDIR)/etc/systemd/system/multi-user.target.wants/syslog-ng.service || exit 1 ;\
		touch $(PKGOBJDIR)/install-sysroot-stamp ;\
	fi

install-pkgroot: pkg-src
	@if [ ! -f $(PKGOBJDIR)/install-pkgroot-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(PKGBINDIR) install ) || exit 1 ;\
		rm -v $(PKGBINDIR)/usr/lib/{libevtlog,libsyslog-ng}.la || exit 1 ;\
		rm -v $(PKGBINDIR)/usr/lib/syslog-ng/*.la || exit 1 ;\
		cp -vf $(PATCHDIR)/syslog-ng.conf $(PKGBINDIR)/etc/syslog-ng/syslog-ng.conf || exit 1 ;\
		cat $(PKGSRCDIR)/contrib/systemd/syslog-ng\@default | sed -e "s@etc/@&syslog-ng/@" > $(PKGBINDIR)/etc/default/syslog-ng || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/syslog-ng.service $(PKGBINDIR)/lib/systemd/system || exit 1 ;\
		ln -svf /lib/systemd/system/syslog-ng.service $(PKGBINDIR)/lib/systemd/system/syslog.service || exit 1 ;\
		ln -svf /lib/systemd/system/syslog-ng.service $(PKGBINDIR)/etc/systemd/system/syslog.service || exit 1 ;\
		ln -svf /lib/systemd/system/syslog-ng.service $(PKGBINDIR)/etc/systemd/system/multi-user.target.wants/syslog-ng.service || exit 1 ;\
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
			syslog-ng_$(PKGVER)-1_$(PKGARCH).deb \
			syslog-ng-dev_$(PKGVER)-1_$(PKGARCH).deb ) || exit 1 ;\
		cat $(SYSROOTDIR)/var/lib/dpkg/info/*.shlibs > $(CROSSTOOLS)/etc/dpkg/shlibs.default || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkg-stamp ;\
	fi

clean:
	@if [ -d $(PKGROOT) ]; then rm -rf $(PKGROOT); fi
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets install-deps
