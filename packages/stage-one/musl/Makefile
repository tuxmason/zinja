#include the shared config file
include ../../../conf/environment.mk

#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch configure build pkg-src install-sysroot install-pkgroot build-pkg install-pkg

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
		touch $(PKGOBJDIR)/patch-stamp ;\
	fi

configure: patch
	@if [ ! -f $(PKGOBJDIR)/configure-stamp  ]; then \
		cd $(PKGOBJDIR) ;\
		( PATH=$(PATH) CFLAGS="$(CFLAGS)" LDFLAGS=$(LDFLAGS) $(PKGSRCDIR)/configure $(COPTS) ) || exit 1 ;\
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
		tar cvfz $(ORIGSRC) $(PKGNAME)-$(PKGVER) || exit 1 ;\
		touch $(PKGOBJDIR)/pkg-src-stamp ;\
	fi

install-deps: install-sysroot install-pkgroot

install-sysroot: pkg-src
	@if [ ! -f $(PKGOBJDIR)/install-sysroot-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(SYSROOTDIR) install-libs ) || exit 1 ;\
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(SYSROOTDIR) install-tools ) || exit 1 ;\
		( PATH=$(PATH) make -C $(PKGOBJDIR) ARCH=$(ARCH) prefix=/usr DESTDIR=$(SYSROOTDIR) install-headers ) || exit 1 ;\
		mv -vf $(SYSROOTDIR)/lib/libc.so $(SYSROOTDIR)/lib/$(LINKER) || exit 1 ;\
		mv -vf $(SYSROOTDIR)/lib/{libc,libcrypt,libdl,libm,libpthread,libresolv,librt,libutil,libxnet}.a \
			$(SYSROOTDIR)/usr/lib || exit 1 ;\
		ln -svf $(LINKER) $(SYSROOTDIR)/lib/$(LIBC) || exit 1 ;\
		for i in libc.so.6 libcrypt.so.1 libm.so.6 libpthread.so.0 librt.so.1 libutil.so.1 libdl.so.2 libresolv.so.2; do \
			ln -svf $(LINKER) $(SYSROOTDIR)/lib/$$i || exit 1 ;\
		done ;\
		for i in libc.so libcrypt.so libm.so libpthread.so librt.so libutil.so libdl.so libresolv.so libxnet.so; do \
			ln -svf ../../lib/$(LINKER) $(SYSROOTDIR)/usr/lib/$$i || exit 1 ;\
		done ;\
		ln -svf ../../lib/$(LINKER) $(SYSROOTDIR)/usr/bin/ldd || exit 1 ;\
		touch $(PKGOBJDIR)/install-sysroot-stamp ;\
	fi

install-pkgroot: pkg-src
	@if [ ! -f $(PKGOBJDIR)/install-pkgroot-stamp ]; then \
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(PKGBINDIR) install-libs ) || exit 1 ;\
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(PKGBINDIR) install-tools ) || exit 1 ;\
		( PATH=$(PATH) make -C $(PKGOBJDIR) ARCH=$(ARCH) prefix=/usr DESTDIR=$(PKGBINDIR) install-headers ) || exit 1 ;\
		mkdir -pv $(PKGBINDIR)/usr/{lib,bin} || exit 1 ;\
		mv -vf $(PKGBINDIR)/lib/libc.so $(PKGBINDIR)/lib/$(LINKER) || exit 1 ;\
		mv -vf $(PKGBINDIR)/lib/*.a $(PKGBINDIR)/usr/lib || exit 1 ;\
		ln -svf $(LINKER) $(PKGBINDIR)/lib/$(LIBC) || exit 1 ;\
		for i in libc.so.6 libcrypt.so.1 libm.so.6 libpthread.so.0 librt.so.1 libutil.so.1 libdl.so.2 libresolv.so.2 libxnet.so; do \
			ln -svf $(LINKER) $(PKGBINDIR)/lib/$$i || exit 1 ;\
		done ;\
		for i in libc.so libcrypt.so libm.so libpthread.so librt.so libutil.so libdl.so libresolv.so libxnet.so; do \
			ln -svf ../../lib/$(LINKER) $(PKGBINDIR)/usr/lib/$$i || exit 1 ;\
		done ;\
		ln -svf ../../lib/$(LINKER) $(PKGBINDIR)/usr/bin/ldd || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkgroot-stamp ;\
	fi

build-pkg: install-pkgroot
	@if [ ! -f $(PKGOBJDIR)/build-pkg-stamp  ]; then \
		cd $(DISTRIBSRC) ;\
		( PATH=$(PATH) dpkg-buildpackage -us -uc -d -a $(PKGARCH) --source-option=--include-binaries ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-pkg-stamp ;\
	fi

install-pkg: build-pkg
	@if [ ! -f $(PKGOBJDIR)/install-pkg-stamp  ]; then \
		cd $(PKGROOT) ;\
		( PATH=$(PATH) fakeroot dpkg --root=$(SYSROOTDIR) --admindir=$(PKGADMINDIR) -i \
			libc_$(PKGVER)-1_$(PKGARCH).deb \
			libc-dev_$(PKGVER)-1_$(PKGARCH).deb ) || exit 1 ;\
		cat $(SYSROOTDIR)/var/lib/dpkg/info/*.shlibs > $(CROSSTOOLS)/etc/dpkg/shlibs.default || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkg-stamp ;\
	fi

clean:
	@if [ -d $(PKGROOT) ]; then rm -rf $(PKGROOT); fi
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
