#include the shared config file
include ../../../conf/environment.mk
#include package specific config file
include ./config.mk

all: targets
targets: clean extract patch build install

extract:  
	@if [ ! -f $(PKGOBJDIR)/extract-stamp  ]; then \
		( tar -C $(TCBUILDROOT) -xf $(SRCDIR)/$(PKGSRC) ) || exit 1 ;\
		mkdir $(PKGOBJDIR) ;\
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
		( PATH=$(PATH) make ARCH=$(ARCH) CROSS_COMPILE="$(TARGETARCH)-" silentoldconfig V=1 ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		cd $(PKGSRCDIR) ;\
		( PATH=$(PATH) make -j$(NPROCS) ARCH=$(ARCH) CROSS_COMPILE="$(TARGETARCH)-" zImage modules ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi
uimage: configure
	@if [ ! -f $(PKGOBJDIR)/uimage-stamp  ]; then \
		cd $(PKGSRCDIR) ;\
		( PATH=$(PATH) make -j$(NPROCS) ARCH=$(ARCH) CROSS_COMPILE="$(TARGETARCH)-" LOADADDR=0x80008000 uImage V=1 ) || exit 1 ;\
		touch $(PKGOBJDIR)/uimage-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		cd $(PKGSRCDIR) ;\
		( install -vd $(SYSROOTDIR)/boot ) ;\
		( install -v arch/$(ARCH)/boot/zImage $(SYSROOTDIR)/boot ) ;\
		( install -v System.map $(SYSROOTDIR)/boot ) ;\
		( install -v .config $(SYSROOTDIR)/boot/$(PKGNAME)-config-$(PKGVER) ) ;\
		( PATH=$(PATH) make ARCH=$(ARCH) CROSS_COMPILE="$(TARGETARCH)-" INSTALL_MOD_PATH=$(SYSROOTDIR) modules_install V=1 ) || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -r $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -r $(PKGOBJDIR); fi

PHONY: all targets
