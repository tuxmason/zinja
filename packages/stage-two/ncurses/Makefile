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
		mkdir $(PKGOBJDIR) ;\
		mkdir $(WPKGOBJDIR) ;\
		mkdir -pv $(PKGBINDIR)/usr/lib ;\
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
		cd $(WPKGOBJDIR) ;\
		( PATH=$(PATH) CC=$(CC) CXX=$(CXX) $(PKGSRCDIR)/configure $(COPTS) $(WCOPTS) ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) make -j$(NPROCS) -C $(WPKGOBJDIR) ) || exit 1 ;\
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
		( PATH=$(PATH) make -C $(WPKGOBJDIR) DESTDIR=$(PKGBINDIR) install ) || exit 1 ;\
		for lib in ncursesw formw panelw menuw ; do \
			rm -v $(PKGBINDIR)/lib/lib$${lib}.so || exit 1 ;\
			mv -v $(PKGBINDIR)/lib/lib$${lib}.a $(PKGBINDIR)/usr/lib || exit 1 ;\
			ln -sfv ../../lib/lib$${lib}.so.6 $(PKGBINDIR)/usr/lib/lib$${lib}.so || exit 1 ;\
		done ;\
		for lib in ncurses form panel menu ; do \
			echo "INPUT(-l$${lib}w)" > $(PKGBINDIR)/usr/lib/lib$${lib}.so || exit 1 ;\
			ln -sfv lib$${lib}w.a $(PKGBINDIR)/usr/lib/lib$${lib}.a || exit 1 ;\
		done ;\
		ln -sfv ncursesw6-config $(PKGBINDIR)/usr/bin/ncurses6-config || exit 1 ;\
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
			libncursesw_$(PKGVER)-1_$(PKGARCH).deb \
			ncursesw_$(PKGVER)-1_$(PKGARCH).deb \
			libncursesw-dev_$(PKGVER)-1_$(PKGARCH).deb \
			ncursesw-doc_$(PKGVER)-1_all.deb ) || exit 1 ;\
		cat $(SYSROOTDIR)/var/lib/dpkg/info/*.shlibs > $(CROSSTOOLS)/etc/dpkg/shlibs.default || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkg-stamp ;\
	fi

clean:
	@if [ -d $(PKGROOT) ]; then rm -rf $(PKGROOT); fi
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi
	@if [ -d $(WPKGOBJDIR) ]; then rm -rf $(WPKGOBJDIR); fi

PHONY: all targets
