#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

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
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) CC=$(CC) CXX=$(CXX) NATIVE_CC=$(HOST_CC) CROSS_COMPILE=1 \
		NSPR_INCLUDE_DIR=$(SYSROOTDIR)/usr/include/nspr NSS_DISABLE_GTESTS=1 BUILD_OPT=1 \
		USE_SYSTEM_ZLIB=1 ZLIB_LIBS=-lz  NSS_ENABLE_WERROR=0 USE_64=1 NSS_USE_SYSTEM_SQLITE=1 \
		make -j1 -C $(PKGSRCDIR)/nss ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		install -vd $(SYSROOTDIR)/usr/include/nss ;\
		cp -v -RL $(PKGSRCDIR)/dist/{public,private}/nss/* $(SYSROOTDIR)/usr/include/nss || exit 1 ;\
		cp -v -RL $(PKGSRCDIR)/dist/*.OBJ/lib/libcrmf.a $(SYSROOTDIR)/usr/lib || exit 1 ;\
		for f in `ls $(PKGSRCDIR)/dist/*.OBJ/bin/*` ; do \
			install -v -m755 `readlink -f $$f` $(SYSROOTDIR)/usr/bin ;\
		done ;\
		for l in `ls $(PKGSRCDIR)/dist/*.OBJ/lib/*.so` ; do \
			install -v -m755 `readlink -f $$l` $(SYSROOTDIR)/usr/lib ;\
		done ;\
		install -v -m655 `readlink -f $(PKGSRCDIR)/dist/*.OBJ/lib/pkgconfig/nss.pc` $(SYSROOTDIR)/usr/lib/pkgconfig || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
