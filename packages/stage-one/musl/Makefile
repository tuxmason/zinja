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
		cd $(PKGOBJDIR) ;\
		( PATH=$(PATH) CFLAGS="$(CFLAGS)" $(PKGSRCDIR)/configure $(COPTS) ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) make -j$(NPROCS) -C $(PKGOBJDIR) ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		install -vd $(SYSROOTDIR)/usr/lib || exit 1 ;\
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(SYSROOTDIR) install-libs ) || exit 1 ;\
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(SYSROOTDIR) install-tools ) || exit 1 ;\
		( PATH=$(PATH) make -C $(PKGOBJDIR) ARCH=$(ARCH) prefix=/usr DESTDIR=$(SYSROOTDIR) install-headers ) || exit 1 ;\
		mv -vf $(SYSROOTDIR)/lib/{libc.so,$(LINKER)} || exit 1 ;\
		for i in libc.a libcrypt.a libdl.a libm.a libpthread.a libresolv.a librt.a libutil.a libxnet.a; do \
			mv -v $(SYSROOTDIR)/lib/$$i $(SYSROOTDIR)/usr/lib || exit 1 ;\
		done ;\
		for i in libc.so libc.so.6 libcrypt.so.1 libm.so.6 libpthread.so.0 librt.so.1 libutil.so.1 libdl.so.2 libresolv.so.2; do \
			ln -svf $(LINKER) $(SYSROOTDIR)/lib/$$i ;\
		done ;\
		for i in libc.so libcrypt.so libm.so libpthread.so librt.so libutil.so libdl.so libresolv.so libxnet.so; do \
			ln -svf ../../lib/$(LINKER) $(SYSROOTDIR)/usr/lib/$$i || exit 1 ;\
		done ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
