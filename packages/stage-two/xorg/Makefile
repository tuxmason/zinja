#include general config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

all: targetfs

x-server-test: xterm.o rxvt-unicode.o

targetfs: xorg-proto.o xorg-libs.o gdk-pixbuf.o xcb-util.o xcb-util-image.o xcb-util-keysyms.o \
	xcb-util-renderutil.o xcb-util-wm.o xcb-util-cursor.o libdrm.o libomxil-bellagio.o \
	startup-notification.o libglvnd.o libvdpau.o mesa.o libepoxy.o glew.o glu.o freeglut.o \
	mesa-demos.o tiff.o xbitmaps.o xorg-apps.o xcursor-themes.o xorg-fonts.o xkeyboard-config.o \
	pixman.o xorg-server.o libwacom.o xorg-drivers.o x-server-test

#============== [ targetfs packages ] ========================================================
xorg-proto.o:
	@echo "Xorg Protocol Headers started $(shell date -R) "
	(make -C proto 2>&1 | tee $(PKGLOGDIR)/xorg-proto.log && exit $$PIPESTATUS)
	@echo "Xorg Protocol Headers finished $(shell date -R) "

xorg-libs.o:
	@echo "Xorg Libraries started $(shell date -R) "
	(make -C libs 2>&1 | tee $(PKGLOGDIR)/xorg-libs.log && exit $$PIPESTATUS)
	@echo "Xorg Libraries finished $(shell date -R) "

gdk-pixbuf.o:
	@echo "gdk-pixbuf started $(shell date -R) "
	(make -C gdk-pixbuf 2>&1 | tee $(PKGLOGDIR)/gdk-pixbuf.log && exit $$PIPESTATUS)
	@echo "gdk-pixbuf finished $(shell date -R) "

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

xcb-util-cursor.o:
	@echo "xcb-util-cursor started $(shell date -R) "
	(make -C xcb-util-cursor 2>&1 | tee $(PKGLOGDIR)/xcb-util-cursor.log && exit $$PIPESTATUS)
	@echo "xcb-util-cursor finished $(shell date -R) "

libdrm.o:
	@echo "libdrm started $(shell date -R) "
	(make -C libdrm 2>&1 | tee $(PKGLOGDIR)/libdrm.log && exit $$PIPESTATUS)
	@echo "libdrm finished $(shell date -R) "

libomxil-bellagio.o:
	@echo "libomxil-bellagio started $(shell date -R) "
	(make -C libomxil-bellagio 2>&1 | tee $(PKGLOGDIR)/libomxil-bellagio.log && exit $$PIPESTATUS)
	@echo "libomxil-bellagio finished $(shell date -R) "

startup-notification.o:
	@echo "startup-notification started $(shell date -R) "
	(make -C startup-notification 2>&1 | tee $(PKGLOGDIR)/startup-notification.log && exit $$PIPESTATUS)
	@echo "startup-notification finished $(shell date -R) "

libglvnd.o:
	@echo "libglvnd started $(shell date -R) "
	(make -C libglvnd 2>&1 | tee $(PKGLOGDIR)/libglvnd.log && exit $$PIPESTATUS)
	@echo "libglvnd finished $(shell date -R) "

mesa.o:
	@echo "mesa started $(shell date -R) "
	(make -C mesa 2>&1 | tee $(PKGLOGDIR)/mesa.log && exit $$PIPESTATUS)
	@echo "mesa finished $(shell date -R) "

libepoxy.o:
	@echo "libepoxy started $(shell date -R) "
	(make -C libepoxy 2>&1 | tee $(PKGLOGDIR)/libepoxy.log && exit $$PIPESTATUS)
	@echo "libepoxy finished $(shell date -R) "

glew.o:
	@echo "glew started $(shell date -R) "
	(make -C glew 2>&1 | tee $(PKGLOGDIR)/glew.log && exit $$PIPESTATUS)
	@echo "glew finished $(shell date -R) "

glu.o:
	@echo "glu started $(shell date -R) "
	(make -C glu 2>&1 | tee $(PKGLOGDIR)/glu.log && exit $$PIPESTATUS)
	@echo "glu finished $(shell date -R) "

freeglut.o:
	@echo "freeglut started $(shell date -R) "
	(make -C freeglut 2>&1 | tee $(PKGLOGDIR)/freeglut.log && exit $$PIPESTATUS)
	@echo "freeglut finished $(shell date -R) "

mesa-demos.o:
	@echo "mesa-demos started $(shell date -R) "
	(make -C mesa-demos 2>&1 | tee $(PKGLOGDIR)/mesa-demos.log && exit $$PIPESTATUS)
	@echo "mesa-demos finished $(shell date -R) "

tiff.o:
	@echo "tiff started $(shell date -R) "
	(make -C tiff 2>&1 | tee $(PKGLOGDIR)/tiff.log && exit $$PIPESTATUS)
	@echo "tiff finished $(shell date -R) "

xbitmaps.o:
	@echo "xbitmaps started $(shell date -R) "
	(make -C xbitmaps 2>&1 | tee $(PKGLOGDIR)/xbitmaps.log && exit $$PIPESTATUS)
	@echo "xbitmaps finished $(shell date -R) "

xorg-apps.o:
	@echo "Xorg Applications started $(shell date -R) "
	(make -C apps 2>&1 | tee $(PKGLOGDIR)/xorg-apps.log && exit $$PIPESTATUS)
	@echo "Xorg Applications finished $(shell date -R) "

xcursor-themes.o:
	@echo "xcursor-themes started $(shell date -R) "
	(make -C xcursor-themes 2>&1 | tee $(PKGLOGDIR)/xcursor-themes.log && exit $$PIPESTATUS)
	@echo "xcursor-themes finished $(shell date -R) "

xorg-fonts.o:
	@echo "Xorg Fonts started $(shell date -R) "
	(make -C fonts 2>&1 | tee $(PKGLOGDIR)/xorg-fonts.log && exit $$PIPESTATUS)
	@echo "Xorg Fonts finished $(shell date -R) "

xkeyboard-config.o:
	@echo "xkeyboard-config started $(shell date -R) "
	(make -C xkeyboard-config 2>&1 | tee $(PKGLOGDIR)/xkeyboard-config.log && exit $$PIPESTATUS)
	@echo "xkeyboard-config finished $(shell date -R) "

pixman.o:
	@echo "pixman started $(shell date -R) "
	(make -C pixman 2>&1 | tee $(PKGLOGDIR)/pixman.log && exit $$PIPESTATUS)
	@echo "pixman finished $(shell date -R) "

xorg-server.o:
	@echo "Xorg Server 7.7 started $(shell date -R) "
	(make -C xorg-server 2>&1 | tee $(PKGLOGDIR)/xorg-server.log && exit $$PIPESTATUS)
	@echo "Xorg Server finished $(shell date -R) "

libvdpau.o:
	@echo "libvdpau started $(shell date -R) "
	(make -C libvdpau 2>&1 | tee $(PKGLOGDIR)/libvdpau.log && exit $$PIPESTATUS)
	@echo "libvdpau finished $(shell date -R) "

libwacom.o:
	@echo "libwacom started $(shell date -R) "
	(make -C libwacom 2>&1 | tee $(PKGLOGDIR)/libwacom.log && exit $$PIPESTATUS)
	@echo "libwacom finished $(shell date -R) "

xorg-drivers.o:
	@echo "Xorg Drivers started $(shell date -R) "
	(make -C drivers 2>&1 | tee $(PKGLOGDIR)/xorg-drivers.log && exit $$PIPESTATUS)
	@echo "Xorg Drivers finished $(shell date -R) "

xterm.o:
	@echo "xterm started $(shell date -R) "
	(make -C xterm 2>&1 | tee $(PKGLOGDIR)/xterm.log && exit $$PIPESTATUS)
	@echo "xterm finished $(shell date -R) "

rxvt-unicode.o:
	@echo "rxvt-unicode started $(shell date -R) "
	(make -C rxvt-unicode 2>&1 | tee $(PKGLOGDIR)/rxvt-unicode.log && exit $$PIPESTATUS)
	@echo "rxvt-unicode finished $(shell date -R) "

#============== [ targetfs packages ] ========================================================

clean:
	for pkg in `ls | grep -v Makefile`; do \
		make -C $$pkg clean ;\
	done ;\
  
PHONY: all targetfs xserver-test
