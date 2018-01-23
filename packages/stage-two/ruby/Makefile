#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch configure-host build-host install-host configure-target build-target install-target

extract:
	@if [ ! -f $(TARGET_PKGOBJDIR)/extract-stamp  ]; then \
		( tar -C $(TCBUILDROOT) -xf $(SRCDIR)/$(PKGSRC) ) || exit 1 ;\
		mkdir $(HOST_PKGOBJDIR) || exit 1 ;\
		mkdir $(TARGET_PKGOBJDIR) || exit 1 ;\
		touch $(TARGET_PKGOBJDIR)/extract-stamp ;\
	fi

patch: extract 
	@if [ ! -f $(TARGET_PKGOBJDIR)/patch-stamp  ]; then \
		if [ -f $(PATCHLIST) ]; then \
			for f in `cat $(PATCHLIST)` ; do \
				echo -e " --- Patch: $$f --- "  ;\
				( patch -d $(PKGSRCDIR) -p1 -i $(PATCHDIR)/$$f ) || exit 1 ;\
				echo -e " --- done --- \n"  ;\
			done ;\
		fi ;\
		touch $(PKGSRCDIR)/* ;\
		cp -v $(PATCHDIR)/$(PKGNAME).cache $(TARGET_PKGOBJDIR) || exit 1 ;\
		touch $(TARGET_PKGOBJDIR)/patch-stamp ;\
	fi

configure-host: patch
	@if [ ! -f $(HOST_PKGOBJDIR)/configure-host-stamp  ]; then \
		cd $(HOST_PKGOBJDIR) ;\
		( PATH=$(HOSTPATH) CC=$(HOST_CC) CXX=$(HOST_CXX) AR=$(HOST_AR) RANLIB=$(HOST_RANLIB) $(PKGSRCDIR)/configure $(HOST_COPTS) ) || exit 1 ;\
		touch $(HOST_PKGOBJDIR)/configure-host-stamp ;\
	fi

build-host: configure-host
	@if [ ! -f $(HOST_PKGOBJDIR)/build-host-stamp  ]; then \
		( PATH=$(HOSTPATH) make -j$(NPROCS) -C $(HOST_PKGOBJDIR) ) || exit 1 ;\
		touch $(HOST_PKGOBJDIR)/build-host-stamp ;\
	fi

install-host: build-host
	@if [ ! -f $(HOST_PKGOBJDIR)/install-host-stamp  ]; then \
		( PATH=$(HOSTPATH) make -C $(HOST_PKGOBJDIR) install ) || exit 1 ;\
		touch $(HOST_PKGOBJDIR)/install-host-stamp ;\
	fi

configure-target: install-host
	@if [ ! -f $(TARGET_PKGOBJDIR)/configure-target-stamp  ]; then \
		cd $(TARGET_PKGOBJDIR) ;\
		( PATH=$(PATH) CC=$(TARGET_CC) CXX=$(TARGET_CXX) CFLAGS=$(CFLAGS) CPPFLAGS=$(CPPFLAGS) \
			$(PKGSRCDIR)/configure $(TARGET_COPTS) ) || exit 1 ;\
		touch $(TARGET_PKGOBJDIR)/configure-target-stamp ;\
	fi

build-target: configure-target
	@if [ ! -f $(TARGET_PKGOBJDIR)/build-target-stamp  ]; then \
		( PATH=$(PATH) make -j$(NPROCS) -C $(TARGET_PKGOBJDIR) ) || exit 1 ;\
		touch $(TARGET_PKGOBJDIR)/build-target-stamp ;\
	fi

install-target: build-target
	@if [ ! -f $(TARGET_PKGOBJDIR)/install-target-stamp  ]; then \
		( PATH=$(PATH) make -C $(TARGET_PKGOBJDIR) DESTDIR=$(SYSROOTDIR) install ) || exit 1 ;\
		touch $(TARGET_PKGOBJDIR)/install-target-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(HOST_PKGOBJDIR) ]; then rm -rf $(HOST_PKGOBJDIR); fi
	@if [ -d $(TARGET_PKGOBJDIR) ]; then rm -rf $(TARGET_PKGOBJDIR); fi

PHONY: all targets
