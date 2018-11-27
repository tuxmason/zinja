#include the shared config file
include ../../../conf/environment.mk
#include package specific config file
include ./config.mk

all: targets
targets: clean extract patch build pkg-src install-pkgroot build-pkg install-pkg

extract:  
	@if [ ! -f $(PKGOBJDIR)/extract-stamp  ]; then \
		( tar -C $(TCBUILDROOT) -xf $(SRCDIR)/$(PKGSRC) ) || exit 1 ;\
		mkdir $(PKGOBJDIR) ;\
		mkdir -pv $(PKGBINDIR)/{boot,lib/firmware} ;\
		touch $(PKGOBJDIR)/extract-stamp ;\
	fi

patch: extract  
	@if [ ! -f $(PKGOBJDIR)/patch-stamp  ]; then \
		if [ -f $(PATCHLIST) ]; then \
			for f in `cat $(PATCHLIST)` ; do \
				echo -e " --- Patch: $$f --- "  ;\
				( patch -d $(PKGSRCDIR) -p1 -i $(PATCHDIR)/$$f ) || exit 1  ;\
				echo -e " --- done --- \n"  ;\
			done ;\
		fi ;\
		touch $(PKGOBJDIR)/patch-stamp ;\
	fi

configure: patch
	@if [ ! -f $(PKGOBJDIR)/configure-stamp  ]; then \
		cd $(PKGSRCDIR) ;\
		( PATH=$(PATH) make mrproper ) || exit 1 ;\
		( PATH=$(PATH) cp $(CONF) $(PKGSRCDIR)/.config ) || exit 1 ;\
		( PATH=$(PATH) make ARCH=$(KARCH) CROSS_COMPILE="$(TARGETARCH)-" silentoldconfig V=1 ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		cd $(PKGSRCDIR) ;\
		( PATH=$(PATH) make -j$(NPROCS) ARCH=$(KARCH) CROSS_COMPILE="$(TARGETARCH)-" $(KIMAGE) modules ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

pkg-src: build
	@if [ ! -f $(PKGOBJDIR)/pkg-src-stamp  ]; then \
		cd $(PKGROOT) ;\
		cp -rv $(PKGDIR)/* $(DISTRIBSRC)/debian || exit 1 ;\
		sed -i -e "s@ARCH@$(PKGARCH)@g" $(DISTRIBSRC)/debian/control || exit 1 ;\
		sed -i -e "s@PKGVER@$(PKGVER)@g" $(DISTRIBSRC)/debian/control || exit 1 ;\
		sed -i -e "s@PKGVER@$(PKGVER)@g" $(DISTRIBSRC)/debian/changelog || exit 1 ;\
		mv -v $(DISTRIBSRC)/debian/{$(PKGNAME)-PKGVER.install,$(PKGNAME)-$(PKGVER).install} || exit 1 ;\
		tar cvfJ $(ORIGSRC) $(PKGNAME)-$(PKGVER) || exit 1 ;\
		touch $(PKGOBJDIR)/pkg-src-stamp ;\
	fi

install-pkgroot: pkg-src
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		cd $(PKGSRCDIR) ;\
		( cp -v arch/$(KARCH)/boot/$(KIMAGE) $(PKGBINDIR)/boot/vmlinuz-$(PKGVER) ) || exit 1 ;\
		( install -v System.map $(PKGBINDIR)/boot ) || exit 1 ;\
		( install -v .config $(PKGBINDIR)/boot/config-$(PKGNAME)-$(ARCH)-$(PKGVER) ) || exit 1 ;\
		( PATH=$(PATH) make ARCH=$(KARCH) CROSS_COMPILE="$(TARGETARCH)-" INSTALL_MOD_PATH=$(PKGBINDIR) modules_install V=1 ) || exit 1 ;\
		( PATH=$(PATH) make ARCH=$(KARCH) CROSS_COMPILE="$(TARGETARCH)-" INSTALL_FW_PATH=$(PKGBINDIR)/lib/firmware firmware_install V=1 ) || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
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
			$(PKGNAME)-$(PKGVER)_$(PKGVER)-1_$(PKGARCH).deb ) || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkg-stamp ;\
	fi

clean:
	@if [ -d $(PKGROOT) ]; then rm -rf $(PKGROOT); fi
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
