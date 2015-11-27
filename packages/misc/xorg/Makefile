#include general config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

all: targetfs

targetfs: xorg-proto.o libXau.o libXdmcp.o libxcb.o xorg-libs.o xcb-util.o xcb-util-image.o \
	xcb-util-keysyms.o xcb-util-renderutil.o xcb-util-wm.o libdrm.o mesa.o xbitmaps.o \
	xorg-apps.o xcursor-themes.o xorg-fonts.o xkeyboard-config.o xorg-server.o

#============== [ targetfs packages ] ========================================================
xorg-proto.o:
	@echo "Xorg Protocol Headers started $(shell date -R) "
	(make -C proto 2>&1 | tee $(PKGLOGDIR)/xorg-proto.log && exit $$PIPESTATUS)
	@echo "Xorg Protocol Headers finished $(shell date -R) "

libXau.o:
	@echo "libXau started $(shell date -R) "
	(make -C libXau 2>&1 | tee $(PKGLOGDIR)/libXau.log && exit $$PIPESTATUS)
	@echo "libXau finished $(shell date -R) "

libXdmcp.o:
	@echo "libXdmcp started $(shell date -R) "
	(make -C libXdmcp 2>&1 | tee $(PKGLOGDIR)/libXdmcp.log && exit $$PIPESTATUS)
	@echo "libXdmcp finished $(shell date -R) "

libxcb.o:
	@echo "libxcb started $(shell date -R) "
	(make -C libxcb 2>&1 | tee $(PKGLOGDIR)/libxcb.log && exit $$PIPESTATUS)
	@echo "libxcb finished $(shell date -R) "

xorg-libs.o:
	@echo "Xorg Libraries started $(shell date -R) "
	(make -C libs 2>&1 | tee $(PKGLOGDIR)/xorg-libs.log && exit $$PIPESTATUS)
	@echo "Xorg Libraries finished $(shell date -R) "

xcb-util.o:
	@echo "xcb-util started $(shell date -R) "
	(make -C xcb-util 2>&1 | tee $(PKGLOGDIR)/xcb-util.log && exit $$PIPESTATUS)
	@echo "xcb-util finished $(shell date -R) "

xcb-util-image.o:
	@echo "xcb-util-image started $(shell date -R) "
	(make -C xcb-util-image 2>&1 | tee $(PKGLOGDIR)/xcb-util-image.log && exit $$PIPESTATUS)
	@echo "xcb-util-image finished $(shell date -R) "

xcb-util-keysyms.o:
	@echo "xcb-util-keysyms started $(shell date -R) "
	(make -C xcb-util-keysyms 2>&1 | tee $(PKGLOGDIR)/xcb-util-keysyms.log && exit $$PIPESTATUS)
	@echo "xcb-util-keysyms finished $(shell date -R) "

xcb-util-renderutil.o:
	@echo "xcb-util-renderutil started $(shell date -R) "
	(make -C xcb-util-renderutil 2>&1 | tee $(PKGLOGDIR)/xcb-util-renderutil.log && exit $$PIPESTATUS)
	@echo "xcb-util finished $(shell date -R) "

xcb-util-wm.o:
	@echo "xcb-util-wm started $(shell date -R) "
	(make -C xcb-util-wm 2>&1 | tee $(PKGLOGDIR)/xcb-util-wm.log && exit $$PIPESTATUS)
	@echo "xcb-util-wm finished $(shell date -R) "

libdrm.o:
	@echo "libdrm started $(shell date -R) "
	(make -C libdrm 2>&1 | tee $(PKGLOGDIR)/libdrm.log && exit $$PIPESTATUS)
	@echo "libdrm finished $(shell date -R) "

mesa.o:
	@echo "mesa started $(shell date -R) "
	(make -C mesa 2>&1 | tee $(PKGLOGDIR)/mesa.log && exit $$PIPESTATUS)
	@echo "mesa finished $(shell date -R) "

xbitmaps.o:
	@echo "xbitmaps started $(shell date -R) "
	(make -C xbitmaps 2>&1 | tee $(PKGLOGDIR)/xbitmaps.log && exit $$PIPESTATUS)
	@echo "xbitmaps finished $(shell date -R) "

xorg-apps.o:
	@echo "Xorg Applications started $(shell date -R) "
	(make -C xorg-apps 2>&1 | tee $(PKGLOGDIR)/xorg-apps.log && exit $$PIPESTATUS)
	@echo "Xorg Applications finished $(shell date -R) "

xcursor-themes.o:
	@echo "xcursor-themes started $(shell date -R) "
	(make -C xcursor-themes 2>&1 | tee $(PKGLOGDIR)/xcursor-themes.log && exit $$PIPESTATUS)
	@echo "xcursor-themes finished $(shell date -R) "

xorg-fonts.o:
	@echo "Xorg Fonts started $(shell date -R) "
	(make -C xorg-fonts 2>&1 | tee $(PKGLOGDIR)/xorg-fonts.log && exit $$PIPESTATUS)
	@echo "Xorg Fonts finished $(shell date -R) "

xkeyboard-config.o:
	@echo "xkeyboard-config started $(shell date -R) "
	(make -C xkeyboard-config 2>&1 | tee $(PKGLOGDIR)/xkeyboard-config.log && exit $$PIPESTATUS)
	@echo "xkeyboard-config finished $(shell date -R) "

xorg-server.o:
	@echo "Xorg Server 7.7 started $(shell date -R) "
	(make -C xorg-server 2>&1 | tee $(PKGLOGDIR)/xorg-server.log && exit $$PIPESTATUS)
	@echo "Xorg Server finished $(shell date -R) "

#============== [ targetfs packages ] ========================================================

clean:
	for pkg in `ls | grep -v Makefile`; do \
		make -C $$pkg clean ;\
	done ;\
  
PHONY: all targetfs
