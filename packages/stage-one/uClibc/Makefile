#include the shared config file
include ../../../conf/environment.mk
#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch configure build install

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
				( patch -d $(PKGSRCDIR) -p1 -i $(PATCHDIR)/$$f ) || exit 1 ;\
				echo -e " --- done --- \n"  ;\
			done ;\
		fi ;\
		touch $(PKGOBJDIR)/patch-stamp ;\
	fi

configure: patch
	@if [ ! -f $(PKGOBJDIR)/configure-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGSRCDIR) CROSS="$(TARGETARCH)-" PREFIX=$(SYSROOTDIR) V=2 allnoconfig KCONFIG_ALLCONFIG=$(CONFIG) ) || exit 1 ;\
		sed -i -e "s@^CROSS_COMPILER_PREFIX=.*\$$@CROSS_COMPILER_PREFIX=\"$(TARGETARCH)-\"@g" $(PKGSRCDIR)/.config ;\
		sed -i -e "s@^KERNEL_HEADERS=.*\$$@KERNEL_HEADERS=\"$(SYSROOTDIR)/usr/include\"@g" $(PKGSRCDIR)/.config ;\
		( PATH=$(PATH) make -C $(PKGSRCDIR) -j$(NPROCS) CROSS="$(TARGETARCH)-" silentoldconfig ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGSRCDIR) -j$(NPROCS) CROSS="$(TARGETARCH)-" PREFIX=$(SYSROOTDIR) all V=2 ) || exit 1 ;\
		( PATH=$(PATH) make -C $(PKGSRCDIR)/utils -j$(NPROCS) CROSS="$(TARGETARCH)-" PREFIX=$(SYSROOTDIR) V=2 ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		( install -vd $(SYSROOTDIR)/{s,}bin ) || exit 1 ;\
		( PATH=$(PATH) make -C $(PKGSRCDIR) CROSS="$(TARGETARCH)-" PREFIX=$(SYSROOTDIR) install ) || exit 1 ;\
		( install -v $(PKGSRCDIR)/utils/ldconfig $(SYSROOTDIR)/sbin ) || exit 1 ;\
		( install -v $(PKGSRCDIR)/utils/{ldd,getconf} $(SYSROOTDIR)/bin ) || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

utils: build

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
