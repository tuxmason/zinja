#include the shared config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

#include package specific config file
include ./config.mk 

all: targets

targets: clean extract patch configure build pkg-src install-deps build-pkg install-pkg

extract:
	@if [ ! -f $(PKGOBJDIR)/extract-stamp  ]; then \
		( tar -C $(TCBUILDROOT) -xf $(SRCDIR)/$(PKGSRC) ) || exit 1 ;\
		mkdir $(PKGOBJDIR) ;\
		mkdir -pv $(PKGBINDIR)/usr/{include/nss,bin,lib/pkgconfig} ;\
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
		( PATH=$(PATH) CC=$(CC) CXX=$(CXX) OS_RELEASE=$(OS_RELEASE) \
			OS_TARGET=$(OS_TARGET) OS_ARCH=$(OS_ARCH) OS_TEST=$(OS_TEST) \
			NATIVE_CC=$(HOST_CC) make -j1 -C $(PKGSRCDIR)/nss $(MOPTS) ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-stamp ;\
	fi

pkg-src: build
	@if [ ! -f $(PKGOBJDIR)/pkg-src-stamp  ]; then \
		cd $(PKGROOT) ;\
		cp -rv $(PKGDIR)/* $(DISTRIBSRC)/debian || exit 1 ;\
		sed -i -e "s@ARCH@$(PKGARCH)@g" $(DISTRIBSRC)/debian/control || exit 1 ;\
		sed -i -e "s@PKGVER@$(PKGVER)@g" $(DISTRIBSRC)/debian/changelog || exit 1 ;\
		tar cvfJ $(ORIGSRC) $(PKGNAME)-$(PKGVER) || exit 1 ;\
		touch $(PKGOBJDIR)/pkg-src-stamp ;\
	fi

install-deps: install-sysroot install-pkgroot

install-sysroot: pkg-src
	@if [ ! -f $(PKGOBJDIR)/install-sysroot-stamp  ]; then \
		install -vd $(SYSROOTDIR)/usr/include/nss || exit 1 ;\
		install -v -m755 $(PKGSRCDIR)/dist/*.OBJ/bin/{nss-config,*util,shlibsign,signtool,signver,ssltap} \
			$(SYSROOTDIR)/usr/bin || exit 1 ;\
		install -v -m644 $(PKGSRCDIR)/dist/*.OBJ/lib/libcrmf.a $(SYSROOTDIR)/usr/lib || exit 1 ;\
		cp -v -RL $(PKGSRCDIR)/dist/{public,private}/nss/* $(SYSROOTDIR)/usr/include/nss || exit 1 ;\
		install -v -m644 $(PKGSRCDIR)/dist/*.OBJ/lib/pkgconfig/nss.pc $(SYSROOTDIR)/usr/lib/pkgconfig || exit 1 ;\
		install -v -m755 $(PKGSRCDIR)/dist/*.OBJ/lib/*.so $(SYSROOTDIR)/usr/lib || exit 1 ;\
		ln -sfv libnssckbi-p11-kit.so $(SYSROOTDIR)/usr/lib/libnssckbi.so || exit 1 ;\
		chmod 644 $(SYSROOTDIR)/usr/include/nss/* || exit 1 ;\
		touch $(PKGOBJDIR)/install-sysroot-stamp ;\
	fi

install-pkgroot: pkg-src
	@if [ ! -f $(PKGOBJDIR)/install-pkgroot-stamp  ]; then \
		install -v -m755 $(PKGSRCDIR)/dist/*.OBJ/bin/{nss-config,*util,shlibsign,signtool,signver,ssltap} \
			$(PKGBINDIR)/usr/bin || exit 1 ;\
		install -v -m644 $(PKGSRCDIR)/dist/*.OBJ/lib/pkgconfig/nss.pc $(PKGBINDIR)/usr/lib/pkgconfig || exit 1 ;\
		install -v -m644 $(PKGSRCDIR)/dist/*.OBJ/lib/libcrmf.a $(PKGBINDIR)/usr/lib || exit 1 ;\
		cp -v -RL $(PKGSRCDIR)/dist/{public,private}/nss/* $(PKGBINDIR)/usr/include/nss || exit 1 ;\
		install -v -m755 $(PKGSRCDIR)/dist/*.OBJ/lib/*.so $(PKGBINDIR)/usr/lib || exit 1 ;\
		ln -sfv libnssckbi-p11-kit.so $(PKGBINDIR)/usr/lib/libnssckbi.so || exit 1 ;\
		cp -v $(PKGBINDIR)/usr/bin/nss-config $(CROSSTOOLS)/bin/nss-config || exit 1 ;\
		sed -i -e "s@/usr@$(SYSROOTDIR)&@g" $(CROSSTOOLS)/bin/nss-config || exit 1 ;\
		chmod 644 $(PKGBINDIR)/usr/include/nss/* || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkgroot-stamp ;\
	fi

build-pkg: install-deps
	@if [ ! -f $(PKGOBJDIR)/build-pkg-stamp  ]; then \
		cd $(DISTRIBSRC) ;\
		( PATH=$(PATH) dpkg-buildpackage -us -uc -d -a $(PKGARCH) --source-option=--include-binaries ) || exit 1 ;\
		touch $(PKGOBJDIR)/build-pkg-stamp ;\
	fi

install-pkg: build-pkg
	@if [ ! -f $(PKGOBJDIR)/install-pkg-stamp  ]; then \
		cd $(PKGROOT) ;\
		( PATH=$(PATH) fakeroot dpkg --root=$(SYSROOTDIR) --admindir=$(PKGADMINDIR) -i \
			lib$(PKGNAME)_$(PKGVER)-1_$(PKGARCH).deb \
			$(PKGNAME)_$(PKGVER)-1_$(PKGARCH).deb \
			lib$(PKGNAME)-dev_$(PKGVER)-1_$(PKGARCH).deb ) || exit 1 ;\
		cat $(SYSROOTDIR)/var/lib/dpkg/info/*.shlibs > $(CROSSTOOLS)/etc/dpkg/shlibs.default || exit 1 ;\
		touch $(PKGOBJDIR)/install-pkg-stamp ;\
	fi

clean:
	@if [ -d $(PKGROOT) ]; then rm -rf $(PKGROOT); fi
	@if [ -d $(PKGSRCDIR) ]; then rm -rf $(PKGSRCDIR); fi
	@if [ -d $(PKGOBJDIR) ]; then rm -rf $(PKGOBJDIR); fi

PHONY: all targets install-deps
