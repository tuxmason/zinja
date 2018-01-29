#include general config file
include ../../../../conf/environment.mk
include ../../../../conf/shell-env.mk

all: xorg-fonts

xorg-fonts: min

full: font-util.o encodings.o font-adobe-100dpi.o font-adobe-75dpi.o font-adobe-utopia-100dpi.o \
	font-adobe-utopia-75dpi.o font-adobe-utopia-type1.o font-alias.o font-arabic-misc.o font-bh-100dpi.o \
	font-bh-75dpi.o font-bh-lucidatypewriter-100dpi.o font-bh-lucidatypewriter-75dpi.o font-bh-ttf.o \
	font-bh-type1.o font-bitstream-100dpi.o font-bitstream-75dpi.o font-bitstream-type1.o \
	font-cronyx-cyrillic.o font-cursor-misc.o font-daewoo-misc.o font-dec-misc.o font-ibm-type1.o \
	font-isas-misc.o font-jis-misc.o font-micro-misc.o font-misc-cyrillic.o font-misc-ethiopic.o \
	font-misc-meltho.o font-misc-misc.o font-mutt-misc.o font-schumacher-misc.o font-screen-cyrillic.o \
	font-sony-misc.o font-sun-misc.o font-winitzki-cyrillic.o font-xfree86-type1.o

min: font-util.o encodings.o font-alias.o font-adobe-utopia-type1.o font-bh-ttf.o font-bh-type1.o \
	font-ibm-type1.o font-misc-ethiopic.o


font-util.o:
	@echo "font-util started $(shell date -R)"
	(make -C font-util 2>&1 | tee $(PKGLOGDIR)/font-util.log && exit $$PIPESTATUS)
	@echo "font-util finished $(shell date -R)"

encodings.o:
	@echo "encodings started $(shell date -R)"
	(make -C encodings 2>&1 | tee $(PKGLOGDIR)/encodings.log && exit $$PIPESTATUS)
	@echo "encodings finished $(shell date -R)"

font-adobe-100dpi.o:
	@echo "font-adobe-100dpi started $(shell date -R)"
	(make -C font-adobe-100dpi 2>&1 | tee $(PKGLOGDIR)/font-adobe-100dpi.log && exit $$PIPESTATUS)
	@echo "font-adobe-100dpi finished $(shell date -R)"

font-adobe-75dpi.o:
	@echo "font-adobe-75dpi started $(shell date -R)"
	(make -C font-adobe-75dpi 2>&1 | tee $(PKGLOGDIR)/font-adobe-75dpi.log && exit $$PIPESTATUS)
	@echo "font-adobe-75dpi finished $(shell date -R)"

font-adobe-utopia-100dpi.o:
	@echo "font-adobe-utopia-100dpi started $(shell date -R)"
	(make -C font-adobe-utopia-100dpi 2>&1 | tee $(PKGLOGDIR)/font-adobe-utopia-100dpi.log && exit $$PIPESTATUS)
	@echo "font-adobe-utopia-100dpi finished $(shell date -R)"

font-adobe-utopia-75dpi.o:
	@echo "font-adobe-utopia-75dpi started $(shell date -R)"
	(make -C font-adobe-utopia-75dpi 2>&1 | tee $(PKGLOGDIR)/font-adobe-utopia-75dpi.log && exit $$PIPESTATUS)
	@echo "font-adobe-utopia-75dpi finished $(shell date -R)"

font-adobe-utopia-type1.o:
	@echo "font-adobe-utopia-type1 started $(shell date -R)"
	(make -C font-adobe-utopia-type1 2>&1 | tee $(PKGLOGDIR)/font-adobe-utopia-type1.log && exit $$PIPESTATUS)
	@echo "font-adobe-utopia-type1 finished $(shell date -R)"

font-alias.o:
	@echo "font-alias started $(shell date -R)"
	(make -C font-alias 2>&1 | tee $(PKGLOGDIR)/font-alias.log && exit $$PIPESTATUS)
	@echo "font-alias finished $(shell date -R)"

font-arabic-misc.o:
	@echo "font-arabic-misc started $(shell date -R)"
	(make -C font-arabic-misc 2>&1 | tee $(PKGLOGDIR)/font-arabic-misc.log && exit $$PIPESTATUS)
	@echo "font-arabic-misc finished $(shell date -R)"

font-bh-100dpi.o:
	@echo "font-bh-100dpi started $(shell date -R)"
	(make -C font-bh-100dpi 2>&1 | tee $(PKGLOGDIR)/font-bh-100dpi.log && exit $$PIPESTATUS)
	@echo "font-bh-100dpi finished $(shell date -R)"

font-bh-75dpi.o:
	@echo "font-bh-75dpi started $(shell date -R)"
	(make -C font-bh-75dpi 2>&1 | tee $(PKGLOGDIR)/font-bh-75dpi.log && exit $$PIPESTATUS)
	@echo "font-bh-75dpi finished $(shell date -R)"

font-bh-lucidatypewriter-100dpi.o:
	@echo "font-bh-lucidatypewriter-100dpi started $(shell date -R)"
	(make -C font-bh-lucidatypewriter-100dpi 2>&1 | tee $(PKGLOGDIR)/font-bh-lucidatypewriter-100dpi.log && exit $$PIPESTATUS)
	@echo "font-bh-lucidatypewriter-100dpi finished $(shell date -R)"

font-bh-lucidatypewriter-75dpi.o:
	@echo "font-bh-lucidatypewriter-75dpi started $(shell date -R)"
	(make -C font-bh-lucidatypewriter-75dpi 2>&1 | tee $(PKGLOGDIR)/font-bh-lucidatypewriter-75dpi.log && exit $$PIPESTATUS)
	@echo "font-bh-lucidatypewriter-75dpi finished $(shell date -R)"

font-bh-ttf.o:
	@echo "font-bh-ttf started $(shell date -R)"
	(make -C font-bh-ttf 2>&1 | tee $(PKGLOGDIR)/font-bh-ttf.log && exit $$PIPESTATUS)
	@echo "font-bh-ttf finished $(shell date -R)"

font-bh-type1.o:
	@echo "font-bh-type1 started $(shell date -R)"
	(make -C font-bh-type1 2>&1 | tee $(PKGLOGDIR)/font-bh-type1.log && exit $$PIPESTATUS)
	@echo "font-bh-type1 finished $(shell date -R)"

font-bitstream-100dpi.o:
	@echo "font-bitstream-100dpi started $(shell date -R)"
	(make -C font-bitstream-100dpi 2>&1 | tee $(PKGLOGDIR)/font-bitstream-100dpi.log && exit $$PIPESTATUS)
	@echo "font-bitstream-100dpi finished $(shell date -R)"

font-bitstream-75dpi.o:
	@echo "font-bitstream-75dpi started $(shell date -R)"
	(make -C font-bitstream-75dpi 2>&1 | tee $(PKGLOGDIR)/font-bitstream-75dpi.log && exit $$PIPESTATUS)
	@echo "font-bitstream-75dpi finished $(shell date -R)"

font-bitstream-type1.o:
	@echo "font-bitstream-type1 started $(shell date -R)"
	(make -C font-bitstream-type1 2>&1 | tee $(PKGLOGDIR)/font-bitstream-type1.log && exit $$PIPESTATUS)
	@echo "font-bitstream-type1 finished $(shell date -R)"

font-cronyx-cyrillic.o:
	@echo "font-cronyx-cyrillic started $(shell date -R)"
	(make -C font-cronyx-cyrillic 2>&1 | tee $(PKGLOGDIR)/font-cronyx-cyrillic.log && exit $$PIPESTATUS)
	@echo "font-cronyx-cyrillic finished $(shell date -R)"

font-cursor-misc.o:
	@echo "font-cursor-misc started $(shell date -R)"
	(make -C font-cursor-misc 2>&1 | tee $(PKGLOGDIR)/font-cursor-misc.log && exit $$PIPESTATUS)
	@echo "font-cursor-misc finished $(shell date -R)"

font-daewoo-misc.o:
	@echo "font-daewoo-misc started $(shell date -R)"
	(make -C font-daewoo-misc 2>&1 | tee $(PKGLOGDIR)/font-daewoo-misc.log && exit $$PIPESTATUS)
	@echo "font-daewoo-misc finished $(shell date -R)"

font-dec-misc.o:
	@echo "font-dec-misc started $(shell date -R)"
	(make -C font-dec-misc 2>&1 | tee $(PKGLOGDIR)/font-dec-misc.log && exit $$PIPESTATUS)
	@echo "font-dec-misc finished $(shell date -R)"

font-ibm-type1.o:
	@echo "font-ibm-type1 started $(shell date -R)"
	(make -C font-ibm-type1 2>&1 | tee $(PKGLOGDIR)/font-ibm-type1.log && exit $$PIPESTATUS)
	@echo "font-ibm-type1 finished $(shell date -R)"

font-isas-misc.o:
	@echo "font-isas-misc started $(shell date -R)"
	(make -C font-isas-misc 2>&1 | tee $(PKGLOGDIR)/font-isas-misc.log && exit $$PIPESTATUS)
	@echo "font-isas-misc finished $(shell date -R)"

font-jis-misc.o:
	@echo "font-jis-misc started $(shell date -R)"
	(make -C font-jis-misc 2>&1 | tee $(PKGLOGDIR)/font-jis-misc.log && exit $$PIPESTATUS)
	@echo "font-jis-misc finished $(shell date -R)"

font-micro-misc.o:
	@echo "font-micro-misc started $(shell date -R)"
	(make -C font-micro-misc 2>&1 | tee $(PKGLOGDIR)/font-micro-misc.log && exit $$PIPESTATUS)
	@echo "font-micro-misc finished $(shell date -R)"

font-misc-cyrillic.o:
	@echo "font-misc-cyrillic started $(shell date -R)"
	(make -C font-misc-cyrillic 2>&1 | tee $(PKGLOGDIR)/font-misc-cyrillic.log && exit $$PIPESTATUS)
	@echo "font-misc-cyrillic finished $(shell date -R)"

font-misc-ethiopic.o:
	@echo "font-misc-ethiopic started $(shell date -R)"
	(make -C font-misc-ethiopic 2>&1 | tee $(PKGLOGDIR)/font-misc-ethiopic.log && exit $$PIPESTATUS)
	@echo "font-misc-ethiopic finished $(shell date -R)"

font-misc-meltho.o:
	@echo "font-misc-meltho started $(shell date -R)"
	(make -C font-misc-meltho 2>&1 | tee $(PKGLOGDIR)/font-misc-meltho.log && exit $$PIPESTATUS)
	@echo "font-misc-meltho finished $(shell date -R)"

font-misc-misc.o:
	@echo "font-misc-misc started $(shell date -R)"
	(make -C font-misc-misc 2>&1 | tee $(PKGLOGDIR)/font-misc-misc.log && exit $$PIPESTATUS)
	@echo "font-misc-misc finished $(shell date -R)"

font-mutt-misc.o:
	@echo "font-mutt-misc started $(shell date -R)"
	(make -C font-mutt-misc 2>&1 | tee $(PKGLOGDIR)/font-mutt-misc.log && exit $$PIPESTATUS)
	@echo "font-mutt-misc finished $(shell date -R)"

font-schumacher-misc.o:
	@echo "font-schumacher-misc started $(shell date -R)"
	(make -C font-schumacher-misc 2>&1 | tee $(PKGLOGDIR)/font-schumacher-misc.log && exit $$PIPESTATUS)
	@echo "font-schumacher-misc finished $(shell date -R)"

font-screen-cyrillic.o:
	@echo "font-screen-cyrillic started $(shell date -R)"
	(make -C font-screen-cyrillic 2>&1 | tee $(PKGLOGDIR)/font-screen-cyrillic.log && exit $$PIPESTATUS)
	@echo "font-screen-cyrillic finished $(shell date -R)"

font-sony-misc.o:
	@echo "font-sony-misc started $(shell date -R)"
	(make -C font-sony-misc 2>&1 | tee $(PKGLOGDIR)/font-sony-misc.log && exit $$PIPESTATUS)
	@echo "font-sony-misc finished $(shell date -R)"

font-sun-misc.o:
	@echo "font-sun-misc started $(shell date -R)"
	(make -C font-sun-misc 2>&1 | tee $(PKGLOGDIR)/font-sun-misc.log && exit $$PIPESTATUS)
	@echo "font-sun-misc finished $(shell date -R)"

font-winitzki-cyrillic.o:
	@echo "font-winitzki-cyrillic started $(shell date -R)"
	(make -C font-winitzki-cyrillic 2>&1 | tee $(PKGLOGDIR)/font-winitzki-cyrillic.log && exit $$PIPESTATUS)
	@echo "font-winitzki-cyrillic finished $(shell date -R)"

font-xfree86-type1.o:
	@echo "font-xfree86-type1 started $(shell date -R)"
	(make -C font-xfree86-type1 2>&1 | tee $(PKGLOGDIR)/font-xfree86-type1.log && exit $$PIPESTATUS)
	@echo "font-xfree86-type1 finished $(shell date -R)"

clean:
	@for pkg in `ls | grep -v Makefile`; do \
		make -C $$pkg clean ;\
	done ;\
  
PHONY: all xorg-fonts
