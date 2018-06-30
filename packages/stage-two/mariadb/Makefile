#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch configure-host build-host configure-target build-target install-deps build-pkg install-pkg

extract:
	@if [ ! -f $(TARGET_PKGOBJDIR)/extract-stamp  ]; then \
		( tar -C $(TCBUILDROOT) -xf $(SRCDIR)/$(PKGSRC) ) || exit 1 ;\
		( tar -C $(PKGSRCDIR)/storage/mroonga/vendor/groonga/vendor -xf $(SRCDIR)/$(LZ4SRC) ) || exit 1 ;\
		mkdir $(HOST_PKGOBJDIR) || exit 1 ;\
		mkdir $(TARGET_PKGOBJDIR) || exit 1 ;\
		mkdir -p $(PKGBINDIR)/lib/systemd/system || exit 1 ;\
		mkdir -p $(PKGBINDIR)/usr/lib/tmpfiles.d || exit 1 ;\
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
		sed -i -e "s@1.7.5@$(LZ4VER)@g" $(PKGSRCDIR)/storage/mroonga/vendor/groonga/bundled_lz4_version || exit 1 ;\
		sed -i -e "s@1.7.5@$(LZ4VER)@g" $(PKGSRCDIR)/storage/rocksdb/rocksdb/Makefile || exit 1 ;\
		touch $(TARGET_PKGOBJDIR)/patch-stamp ;\
	fi

configure-host: patch
	@if [ ! -f $(HOST_PKGOBJDIR)/configure-stamp  ]; then \
		cd $(HOST_PKGOBJDIR) ;\
		( PATH=$(HOSTPATH) CC=$(HOST_CC) CXX=$(HOST_CXX) cmake -G "Unix Makefiles" $(HOST_COPTS) $(PKGSRCDIR) ) || exit 1 ;\
		touch $(HOST_PKGOBJDIR)/configure-stamp ;\
	fi

build-host: configure-host
	@if [ ! -f $(HOST_PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(HOSTPATH) make -j$(NPROCS) -C $(HOST_PKGOBJDIR) import_executables ) || exit 1 ;\
		touch $(HOST_PKGOBJDIR)/build-stamp ;\
	fi

configure-target: build-host
	@if [ ! -f $(TARGET_PKGOBJDIR)/configure-stamp  ]; then \
		cd $(TARGET_PKGOBJDIR) ;\
		( PATH=$(PATH) CC=$(TARGET_CC) CXX=$(TARGET_CXX) cmake -G "Unix Makefiles" $(TARGET_COPTS) $(PKGSRCDIR) ) || exit 1 ;\
		touch $(TARGET_PKGOBJDIR)/configure-stamp ;\
	fi

build-target: configure-target
	@if [ ! -f $(TARGET_PKGOBJDIR)/build-stamp  ]; then \
		( PATH=$(PATH) make -j$(NPROCS) -C $(TARGET_PKGOBJDIR) ) || exit 1 ;\
		touch $(TARGET_PKGOBJDIR)/build-stamp ;\
	fi

pkg-src: build-target
	@if [ ! -f $(TARGET_PKGOBJDIR)/pkg-src-stamp  ]; then \
		cd $(PKGROOT) ;\
		cp -rv $(PKGDIR)/* $(DISTRIBSRC)/debian || exit 1 ;\
		sed -i -e "s@ARCH@$(PKGARCH)@g" $(DISTRIBSRC)/debian/control || exit 1 ;\
		sed -i -e "s@PKGVER@$(PKGVER)@g" $(DISTRIBSRC)/debian/changelog || exit 1 ;\
		tar cvfJ $(ORIGSRC) $(PKGNAME)-$(PKGVER) || exit 1 ;\
		touch $(TARGET_PKGOBJDIR)/pkg-src-stamp ;\
	fi

install-deps: install-sysroot install-pkgroot

install-sysroot: pkg-src
	@if [ ! -f $(TARGET_PKGOBJDIR)/install-sysroot-stamp  ]; then \
		install -vd $(SYSROOTDIR)/{etc/mysql,srv/mysql} || exit 1 ;\
		( PATH=$(PATH) make -C $(TARGET_PKGOBJDIR) DESTDIR=$(SYSROOTDIR) install ) || exit 1 ;\
		install -v -m 644 $(SYSROOTDIR)/usr/share/mysql/systemd/mariadb.service $(SYSROOTDIR)/lib/systemd/system || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/mysqld.conf $(SYSROOTDIR)/usr/lib/tmpfiles.d || exit 1 ;\
		touch $(TARGET_PKGOBJDIR)/install-sysroot-stamp ;\
	fi

install-pkgroot: pkg-src
	@if [ ! -f $(TARGET_PKGOBJDIR)/install-pkgroot-stamp  ]; then \
		install -vd $(PKGBINDIR)/{etc/mysql,srv/mysql} || exit 1 ;\
		( PATH=$(PATH) make -C $(TARGET_PKGOBJDIR) DESTDIR=$(PKGBINDIR) install ) || exit 1 ;\
		install -v -m 644 $(PKGBINDIR)/usr/share/mysql/systemd/mariadb.service $(PKGBINDIR)/lib/systemd/system || exit 1 ;\
		install -v -m 644 $(PATCHDIR)/mysqld.conf $(PKGBINDIR)/usr/lib/tmpfiles.d || exit 1 ;\
		touch $(TARGET_PKGOBJDIR)/install-pkgroot-stamp ;\
	fi

build-pkg: install-deps
	@if [ ! -f $(TARGET_PKGOBJDIR)/build-pkg-stamp  ]; then \
		cd $(DISTRIBSRC) ;\
		( PATH=$(PATH) dpkg-buildpackage -us -uc -d -a $(PKGARCH) --source-option=--include-binaries ) || exit 1 ;\
		touch $(TARGET_PKGOBJDIR)/build-pkg-stamp ;\
	fi

install-pkg: build-pkg
	@if [ ! -f $(TARGET_PKGOBJDIR)/install-pkg-stamp  ]; then \
		cd $(PKGROOT) ;\
		( PATH=$(PATH) fakeroot dpkg --root=$(SYSROOTDIR) --admindir=$(PKGADMINDIR) -i \
			mariadb_$(PKGVER)-1_$(PKGARCH).deb \
			mariadb-dev_$(PKGVER)-1_$(PKGARCH).deb \
			mariadb-doc_$(PKGVER)-1_all.deb ) || exit 1 ;\
		cat $(SYSROOTDIR)/var/lib/dpkg/info/*.shlibs > $(CROSSTOOLS)/etc/dpkg/shlibs.default || exit 1 ;\
		touch $(TARGET_PKGOBJDIR)/install-pkg-stamp ;\
	fi

clean:
	@if [ -d $(PKGROOT) ]; then rm -rf $(PKGROOT); fi
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(HOST_PKGOBJDIR) ]; then rm -rf $(HOST_PKGOBJDIR); fi
	@if [ -d $(TARGET_PKGOBJDIR) ]; then rm -rf $(TARGET_PKGOBJDIR); fi

PHONY: all targets install-deps
