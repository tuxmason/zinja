#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch autogen configure build install

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
		cp -v $(PATCHDIR)/$(PKGNAME).cache $(PKGOBJDIR) || exit 1 ;\
		touch $(PKGOBJDIR)/patch-stamp ;\
	fi

autogen: patch
	@if [ ! -f $(PKGOBJDIR)/autogen-stamp  ]; then \
		cd $(PKGSRCDIR) ;\
		./autogen.sh || exit 1 ;\
		touch $(PKGOBJDIR)/autogen-stamp ;\
	fi

configure: autogen
	@if [ ! -f $(PKGOBJDIR)/configure-stamp  ]; then \
		cd $(PKGOBJDIR) ;\
		( PATH=$(PATH) KMOD_LIBS=$(KMOD_LIBS) CPPFLAGS=$(CPPFLAGS) CFLAGS=$(CFLAGS) $(PKGSRCDIR)/configure $(COPTS) ) || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) KMOD_LIBS=$(KMOD_LIBS) make -j$(NPROCS) -C $(PKGOBJDIR) ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		( PATH=$(PATH) make -C $(PKGOBJDIR) DESTDIR=$(SYSROOTDIR) install ) || exit 1 ;\
		rm -rfv $(SYSROOTDIR)/usr/lib/rpm || exit 1 ;\
		for tool in runlevel reboot shutdown poweroff halt telinit; do \
			ln -sfv /bin/systemctl $(SYSROOTDIR)/sbin/$$tool || exit 1 ;\
		done ;\
		ln -sfv /lib/systemd/systemd $(SYSROOTDIR)/sbin/init || exit 1 ;\
		ln -sfv /lib/systemd/system/multi-user.target $(SYSROOTDIR)/etc/systemd/system/default.target || exit 1 ;\
		sed -i "s@root lock@root root@g" $(SYSROOTDIR)/usr/lib/tmpfiles.d/legacy.conf || exit 1 ;\
		rm -v $(SYSROOTDIR)/lib/{libsystemd.la,libudev.la} || exit 1 ;\
		mkdir -pv $(SYSROOTDIR)/etc/systemd/system/getty@tty1.service.d ;\
		install -v -m644 $(PATCHDIR)/noclear.conf $(SYSROOTDIR)/etc/systemd/system/getty@tty1.service.d || exit 1 ;\
		ln -sfv /dev/null $(SYSROOTDIR)/etc/systemd/system/tmp.mount || exit 1 ;\
		ln -sfv /dev/null $(SYSROOTDIR)/etc/systemd/network/99-default.link || exit 1 ;\
		touch $(SYSROOTDIR)/etc/machine-id || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
