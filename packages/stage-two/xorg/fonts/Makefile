#include general config file
include ../../../../conf/environment.mk
include ../../../../conf/shell-env.mk

all: xorg-fonts

xorg-fonts: min

min: encodings.o font-alias.o font-adobe-utopia-type1.o font-bh-ttf.o font-bh-type1.o \
	font-ibm-type1.o font-misc-ethiopic.o font-xfree86-type1.o carlito.o caladea.o \
	cantarell-fonts.o dejavu-fonts-ttf.o freefont.o gelasio.o liberation-fonts.o

encodings.o:
	@echo "encodings started $(shell date -R)"
	(make -C encodings 2>&1 | tee $(PKGLOGDIR)/encodings.log && exit $$PIPESTATUS)
	@echo "encodings finished $(shell date -R)"

font-alias.o:
	@echo "font-alias started $(shell date -R)"
	(make -C font-alias 2>&1 | tee $(PKGLOGDIR)/font-alias.log && exit $$PIPESTATUS)
	@echo "font-alias finished $(shell date -R)"

font-adobe-utopia-type1.o:
	@echo "font-adobe-utopia-type1 started $(shell date -R)"
	(make -C font-adobe-utopia-type1 2>&1 | tee $(PKGLOGDIR)/font-adobe-utopia-type1.log && exit $$PIPESTATUS)
	@echo "font-adobe-utopia-type1 finished $(shell date -R)"

font-bh-ttf.o:
	@echo "font-bh-ttf started $(shell date -R)"
	(make -C font-bh-ttf 2>&1 | tee $(PKGLOGDIR)/font-bh-ttf.log && exit $$PIPESTATUS)
	@echo "font-bh-ttf finished $(shell date -R)"

font-bh-type1.o:
	@echo "font-bh-type1 started $(shell date -R)"
	(make -C font-bh-type1 2>&1 | tee $(PKGLOGDIR)/font-bh-type1.log && exit $$PIPESTATUS)
	@echo "font-bh-type1 finished $(shell date -R)"

font-ibm-type1.o:
	@echo "font-ibm-type1 started $(shell date -R)"
	(make -C font-ibm-type1 2>&1 | tee $(PKGLOGDIR)/font-ibm-type1.log && exit $$PIPESTATUS)
	@echo "font-ibm-type1 finished $(shell date -R)"

font-misc-ethiopic.o:
	@echo "font-misc-ethiopic started $(shell date -R)"
	(make -C font-misc-ethiopic 2>&1 | tee $(PKGLOGDIR)/font-misc-ethiopic.log && exit $$PIPESTATUS)
	@echo "font-misc-ethiopic finished $(shell date -R)"

font-xfree86-type1.o:
	@echo "font-xfree86-type1 started $(shell date -R)"
	(make -C font-xfree86-type1 2>&1 | tee $(PKGLOGDIR)/font-xfree86-type1.log && exit $$PIPESTATUS)
	@echo "font-xfree86-type1 finished $(shell date -R)"

carlito.o:
	@echo "carlito started $(shell date -R)"
	(make -C carlito 2>&1 | tee $(PKGLOGDIR)/carlito.log && exit $$PIPESTATUS)
	@echo "carlito finished $(shell date -R)"

caladea.o:
	@echo "caladea started $(shell date -R)"
	(make -C caladea 2>&1 | tee $(PKGLOGDIR)/caladea.log && exit $$PIPESTATUS)
	@echo "caladea finished $(shell date -R)"

cantarell-fonts.o:
	@echo "cantarell-fonts started $(shell date -R)"
	(make -C cantarell-fonts 2>&1 | tee $(PKGLOGDIR)/cantarell-fonts.log && exit $$PIPESTATUS)
	@echo "cantarell-fonts finished $(shell date -R)"

dejavu-fonts-ttf.o:
	@echo "dejavu-fonts-ttf started $(shell date -R)"
	(make -C dejavu-fonts-ttf 2>&1 | tee $(PKGLOGDIR)/dejavu-fonts-ttf.log && exit $$PIPESTATUS)
	@echo "dejavu-fonts-ttf finished $(shell date -R)"

freefont.o:
	@echo "freefont started $(shell date -R)"
	(make -C freefont 2>&1 | tee $(PKGLOGDIR)/freefont.log && exit $$PIPESTATUS)
	@echo "freefont finished $(shell date -R)"

gelasio.o:
	@echo "gelasio started $(shell date -R)"
	(make -C gelasio 2>&1 | tee $(PKGLOGDIR)/gelasio.log && exit $$PIPESTATUS)
	@echo "gelasio finished $(shell date -R)"

liberation-fonts.o:
	@echo "liberation-fonts started $(shell date -R)"
	(make -C liberation-fonts 2>&1 | tee $(PKGLOGDIR)/liberation-fonts.log && exit $$PIPESTATUS)
	@echo "liberation-fonts finished $(shell date -R)"

clean:
	@find . -maxdepth 1 -mindepth 1 -type d -exec make -C "{}" clean \; || exit 1 ;\

PHONY: all xorg-fonts
