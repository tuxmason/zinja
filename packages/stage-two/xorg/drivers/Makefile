#include general config file
include ../../../../conf/environment.mk
include ../../../../conf/shell-env.mk

common: libevdev.o libinput.o xf86-input-evdev.o xf86-input-libinput.o xf86-input-synaptics.o \
	xf86-video-fbdev.o xf86-input-wacom.o xf86-video-amdgpu.o xf86-video-ati.o xf86-video-nouveau.o

x86_64: xf86-input-vmmouse.o xf86-video-vmware.o xf86-video-intel.o

ifeq ($(ARCH),arm)
	xorg-drivers: common
endif

ifeq ($(ARCH),x86_64)
	xorg-drivers: common x86_64
endif

all: xorg-drivers


libevdev.o:
	@echo "libevdev started $(shell date -R) "
	(make -C libevdev 2>&1 | tee $(PKGLOGDIR)/xf86-input-evdev.log && exit $$PIPESTATUS)
	@echo "libevdev finished $(shell date -R) "

xf86-input-evdev.o:
	@echo "xf86-input-evdev started $(shell date -R) "
	(make -C xf86-input-evdev 2>&1 | tee $(PKGLOGDIR)/xf86-input-evdev.log && exit $$PIPESTATUS)
	@echo "xf86-input-evdev finished $(shell date -R) "

libinput.o:
	@echo "libinput started $(shell date -R) "
	(make -C libinput 2>&1 | tee $(PKGLOGDIR)/libinput.log && exit $$PIPESTATUS)
	@echo "libinput finished $(shell date -R) "

xf86-input-libinput.o:
	@echo "xf86-input-libinput started $(shell date -R) "
	(make -C xf86-input-libinput 2>&1 | tee $(PKGLOGDIR)/xf86-input-libinput.log && exit $$PIPESTATUS)
	@echo "xf86-input-libinput finished $(shell date -R) "

xf86-input-synaptics.o:
	@echo "xf86-input-synaptics started $(shell date -R) "
	(make -C xf86-input-synaptics 2>&1 | tee $(PKGLOGDIR)/xf86-input-synaptics.log && exit $$PIPESTATUS)
	@echo "xf86-input-synaptics finished $(shell date -R) "

xf86-video-fbdev.o:
	@echo "xf86-video-fbdev started $(shell date -R) "
	(make -C xf86-video-fbdev 2>&1 | tee $(PKGLOGDIR)/xf86-video-fbdev.log && exit $$PIPESTATUS)
	@echo "xf86-video-fbdev finished $(shell date -R) "

xf86-input-wacom.o:
	@echo "xf86-input-wacom started $(shell date -R) "
	(make -C xf86-input-wacom 2>&1 | tee $(PKGLOGDIR)/xf86-input-wacom.log && exit $$PIPESTATUS)
	@echo "xf86-input-wacom finished $(shell date -R) "

xf86-video-amdgpu.o:
	@echo "xf86-video-amdgpu started $(shell date -R) "
	(make -C xf86-video-amdgpu 2>&1 | tee $(PKGLOGDIR)/xf86-video-amdgpu.log && exit $$PIPESTATUS)
	@echo "xf86-video-amdgpu finished $(shell date -R) "

xf86-video-ati.o:
	@echo "xf86-video-ati started $(shell date -R) "
	(make -C xf86-video-ati 2>&1 | tee $(PKGLOGDIR)/xf86-video-ati.log && exit $$PIPESTATUS)
	@echo "xf86-video-ati finished $(shell date -R) "

xf86-video-nouveau.o:
	@echo "xf86-video-nouveau started $(shell date -R) "
	(make -C xf86-video-nouveau 2>&1 | tee $(PKGLOGDIR)/xf86-video-nouveau.log && exit $$PIPESTATUS)
	@echo "xf86-video-nouveau finished $(shell date -R) "

xf86-input-vmmouse.o:
	@echo "xf86-input-vmmouse started $(shell date -R) "
	(make -C xf86-input-vmmouse 2>&1 | tee $(PKGLOGDIR)/xf86-input-vmmouse.log && exit $$PIPESTATUS)
	@echo "xf86-input-vmmouse finished $(shell date -R) "

xf86-video-vmware.o:
	@echo "xf86-video-vmware started $(shell date -R) "
	(make -C xf86-video-vmware 2>&1 | tee $(PKGLOGDIR)/xf86-video-vmware.log && exit $$PIPESTATUS)
	@echo "xf86-video-vmware finished $(shell date -R) "

xf86-video-intel.o:
	@echo "xf86-video-intel started $(shell date -R) "
	(make -C xf86-video-intel 2>&1 | tee $(PKGLOGDIR)/xf86-video-intel.log && exit $$PIPESTATUS)
	@echo "xf86-video-intel finished $(shell date -R) "

clean:
	@for pkg in `ls | grep -v Makefile`; do \
		make -C $$pkg clean ;\
	done ;\
  
PHONY: all xorg-drivers
