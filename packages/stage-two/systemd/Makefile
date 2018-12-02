#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch autogen configure build pkg-src install-deps build-pkg install-pkg

extract:
	@if [ ! -f $(PKGOBJDIR)/extract-stamp  ]; then \
		( tar -C $(TCBUILDROOT) -xf $(SRCDIR)/$(PKGSRC) ) || exit 1 ;\
		mkdir $(PKGOBJDIR) ;\
		mkdir -pv $(PKGBINDIR)/sbin ;\
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
		cp -v $(PATCHDIR)/$(PKGNAME).cache $(PKGOBJDIR) || exit 1 ;\
		sed -i -e "s@autoreconf@& -I $(SYSROOTDIR)/usr/share/aclocal@g" $(PKGSRCDIR)/autogen.sh || exit 1 ;\
		touch $(PKGOBJDIR)/patch-stamp ;\
	fi

autogen: patch
	@if [ ! -f $(PKGOBJDIR)/autogen-stamp  ]; then \
		cd $(PKGSRCDIR) ;\
		( PATH=$(PATH) ./autogen.sh ) || exit 1 ;\
		touch $(PKGOBJDIR)/autogen-stamp ;\
	fi

configure: autogen
	@if [ ! -f $(PKGOBJDIR)/configure-stamp  ]; then \
		cd $(PKGOBJDIR) ;\
		( PATH=$(PATH) CC=$(CC) CXX=$(CXX) KMOD_LIBS=$(KMOD_LIBS) CPPFLAGS=$(CPPFLAGS) \
			CFLAGS=$(CFLAGS) $(PKGSRCDIR)/configure $(COPTS) ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) KMOD_LIBS=$(KMOD_LIBS) make -j$(NPROCS) -C $(PKGOBJDIR) ) || exit 1 ;\
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
		rm -rfv $(SYSROOTDIR)/usr/lib/rpm || exit 1 ;\
		for tool in runlevel reboot shutdown poweroff halt telinit; do \
			ln -sfv /bin/systemctl $(SYSROOTDIR)/sbin/$$tool || exit 1 ;\
		done ;\
		ln -sfv /lib/systemd/systemd $(SYSROOTDIR)/sbin/init || exit 1 ;\
		ln -sfv /lib/systemd/system/multi-user.target $(SYSROOTDIR)/etc/systemd/system/default.target || exit 1 ;\
		sed -i "s@root lock@root root@g" $(SYSROOTDIR)/usr/lib/tmpfiles.d/legacy.conf || exit 1 ;\
		rm -v $(SYSROOTDIR)/lib/{libsystemd.la,libudev.la} || exit 1 ;\
		rm -v $(SYSROOTDIR)/lib/{systemd/libsystemd-shared.la,security/pam_systemd.la} || exit 1 ;\
		mkdir -pv $(SYSROOTDIR)/etc/systemd/system/getty@tty1.service.d ;\
		install -v -m644 $(PATCHDIR)/noclear.conf $(SYSROOTDIR)/etc/systemd/system/getty@tty1.service.d || exit 1 ;\
		ln -sfv /dev/null $(SYSROOTDIR)/etc/systemd/system/tmp.mount || exit 1 ;\
		ln -sfv /dev/null $(SYSROOTDIR)/etc/systemd/network/99-default.link || exit 1 ;\
		rm -v $(SYSROOTDIR)/lib/systemd/system/systemd-update-utmp-runlevel.service || exit 1 ;\
		rm -v $(SYSROOTDIR)/lib/systemd/system/systemd-update-utmp.service || exit 1 ;\
		touch $(SYSROOTDIR)/etc/machine-id || exit 1 ;\
		touch $(PKGOBJDIR)/install-sysroot-stamp ;\
	fi

install-pkgroot: pkg-src
	@if [ ! -f $(PKGOBJDIR)/install-pkgroot-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(PKGBINDIR) install ) || exit 1 ;\
		rm -rfv $(PKGBINDIR)/usr/lib/rpm || exit 1 ;\
		for tool in runlevel reboot shutdown poweroff halt telinit; do \
			ln -sfv /bin/systemctl $(PKGBINDIR)/sbin/$$tool || exit 1 ;\
		done ;\
		ln -sfv /lib/systemd/systemd $(PKGBINDIR)/sbin/init || exit 1 ;\
		ln -sfv /lib/systemd/system/multi-user.target $(PKGBINDIR)/etc/systemd/system/default.target || exit 1 ;\
		sed -i "s@root lock@root root@g" $(PKGBINDIR)/usr/lib/tmpfiles.d/legacy.conf || exit 1 ;\
		rm -v $(PKGBINDIR)/lib/{libsystemd.la,libudev.la} || exit 1 ;\
		rm -v $(PKGBINDIR)/lib/{systemd/libsystemd-shared.la,security/pam_systemd.la} || exit 1 ;\
		mkdir -pv $(PKGBINDIR)/etc/systemd/system/getty@tty1.service.d ;\
		install -v -m644 $(PATCHDIR)/noclear.conf $(PKGBINDIR)/etc/systemd/system/getty@tty1.service.d || exit 1 ;\
		ln -sfv /dev/null $(PKGBINDIR)/etc/systemd/system/tmp.mount || exit 1 ;\
		ln -sfv /dev/null $(PKGBINDIR)/etc/systemd/network/99-default.link || exit 1 ;\
		rm -v $(PKGBINDIR)/lib/systemd/system/systemd-update-utmp-runlevel.service || exit 1 ;\
		rm -v $(PKGBINDIR)/lib/systemd/system/systemd-update-utmp.service || exit 1 ;\
		touch $(PKGBINDIR)/etc/machine-id || exit 1 ;\
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
			libsystemd_$(PKGVER)-1_$(PKGARCH).deb \
			libudev_$(PKGVER)-1_$(PKGARCH).deb \
			systemd_$(PKGVER)-1_$(PKGARCH).deb \
			systemd-dev_$(PKGVER)-1_$(PKGARCH).deb \
			systemd-doc_$(PKGVER)-1_all.deb ) || exit 1 ;\
		cat $(SYSROOTDIR)/var/lib/dpkg/info/*.shlibs > $(CROSSTOOLS)/etc/dpkg/shlibs.default || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkg-stamp ;\
	fi

clean:
	@if [ -d $(PKGROOT) ]; then rm -rf $(PKGROOT); fi
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets install-deps
