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
		cp -v $(PATCHDIR)/config $(PKGSRCDIR)/wpa_supplicant/.config || exit 1 ;\
		touch $(PKGOBJDIR)/configure-stamp ;\
	fi

build: configure
	@if [ ! -f $(PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) make CC=$(CC) -j$(NPROCS) -C $(PKGSRCDIR)/wpa_supplicant BINDIR=/sbin LIBDIR=/lib V=1 ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

install: build
	@if [ ! -f $(PKGOBJDIR)/install-stamp  ]; then \
		install -v -m755 $(PKGSRCDIR)/wpa_supplicant/wpa_{cli,passphrase,supplicant} \
			$(SYSROOTDIR)/sbin || exit 1 ;\
		install -v -m644 $(PKGSRCDIR)/wpa_supplicant/doc/docbook/wpa_supplicant.conf.5 \
			$(SYSROOTDIR)/usr/share/man/man5 || exit 1 ;\
		install -v -m644 $(PKGSRCDIR)/wpa_supplicant/doc/docbook/wpa_{cli,passphrase,supplicant}.8 \
			$(SYSROOTDIR)/usr/share/man/man8 || exit 1 ;\
		install -v -m644 $(PKGSRCDIR)/wpa_supplicant/dbus/fi.{epitest.hostap.WPASupplicant,w1.wpa_supplicant1}.service \
			$(SYSROOTDIR)/usr/share/dbus-1/system-services/ || exit 1 ;\
		install -v -m644 $(PKGSRCDIR)/wpa_supplicant/dbus/dbus-wpa_supplicant.conf \
			$(SYSROOTDIR)/etc/dbus-1/system.d/wpa_supplicant.conf || exit 1 ;\
		install -v -m644 $(PKGSRCDIR)/wpa_supplicant/systemd/*.service \
			$(SYSROOTDIR)/lib/systemd/system || exit 1 ;\
		touch $(PKGOBJDIR)/install-stamp ;\
	fi

clean:
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets
