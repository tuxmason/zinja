#include general config file
include ../../../../conf/environment.mk
include ../../../../conf/shell-env.mk

all: xorg-drivers

xorg-drivers: xf86-input-evdev.o xf86-input-synaptics.o xf86-video-fbdev.o xf86-video-vesa.o


xf86-input-evdev.o:
	@echo "xf86-input-evdev started $(shell date -R) "
	(make -C xf86-input-evdev 2>&1 | tee $(PKGLOGDIR)/xf86-input-evdev.log && exit $$PIPESTATUS)
	@echo "xf86-input-evdev finished $(shell date -R) "

xf86-input-synaptics.o:
	@echo "xf86-input-synaptics started $(shell date -R) "
	(make -C xf86-input-synaptics 2>&1 | tee $(PKGLOGDIR)/xf86-input-synaptics.log && exit $$PIPESTATUS)
	@echo "xf86-input-synaptics finished $(shell date -R) "

xf86-video-fbdev.o:
	@echo "xf86-video-fbdev started $(shell date -R) "
	(make -C xf86-video-fbdev 2>&1 | tee $(PKGLOGDIR)/xf86-video-fbdev.log && exit $$PIPESTATUS)
	@echo "xf86-video-fbdev finished $(shell date -R) "

xf86-video-vesa.o:
	@echo "xf86-video-vesa started $(shell date -R) "
	(make -C xf86-video-vesa 2>&1 | tee $(PKGLOGDIR)/xf86-video-vesa.log && exit $$PIPESTATUS)
	@echo "xf86-video-vesa finished $(shell date -R) "


clean:
	for pkg in `ls | grep -v Makefile`; do \
		make -C $$pkg clean ;\
	done ;\
  
PHONY: all xorg-drivers
