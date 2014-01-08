#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch autoconf configure build install

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
		touch $(PKGSRCDIR)/* ;\
		( cp -v $(PATCHDIR)/$(PKGNAME).cache $(PKGOBJDIR) ) || exit 1 ;\
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
		( PATH=$(PATH) CC=$(CC) $(PKGSRCDIR)/configure $(COPTS) ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) make -j$(NPROCS) -C $(PKGOBJDIR) V=1 ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(SYSROOTDIR) install ) || exit 1 ;\
		mv -v $(SYSROOTDIR)/usr/bin/chroot $(SYSROOTDIR)/usr/sbin || exit 1 ;\
		mv -v $(SYSROOTDIR)/usr/bin/{cat,chgrp,chmod,chown,cp,date} $(SYSROOTDIR)/bin || exit 1 ;\
		mv -v $(SYSROOTDIR)/usr/bin/{dd,df,echo,false,ln,ls,mkdir} $(SYSROOTDIR)/bin || exit 1 ;\
		mv -v $(SYSROOTDIR)/usr/bin/{mv,pwd,rm,rmdir,stty,true,uname} $(SYSROOTDIR)/bin || exit 1 ;\
		mv -v $(SYSROOTDIR)/usr/bin/{[,basename,head,install,nice} $(SYSROOTDIR)/bin || exit 1 ;\
		mv -v $(SYSROOTDIR)/usr/bin/{readlink,arch,sleep,sync,test,touch} $(SYSROOTDIR)/bin || exit 1 ;\
		ln -sv /bin/install $(SYSROOTDIR)/usr/bin/install || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
