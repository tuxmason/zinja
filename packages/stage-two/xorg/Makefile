#include general config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

all: targetfs

x-server-test: xterm.o rxvt-unicode.o

targetfs: xorg-proto.o xorg-libs.o mozjs.o polkit.o upower.o libxklavier.o imlib2.o gdk-pixbuf.o xcb-util.o xcb-util-image.o \
	xcb-util-keysyms.o xcb-util-renderutil.o xcb-util-wm.o xcb-util-cursor.o libdrm.o \
	startup-notification.o libvdpau.o libva.o libglvnd.o libglvnd-static.o mesa.o libva-mesa.o libepoxy.o glew.o \
	glu.o freeglut.o mesa-demos.o xbitmaps.o xorg-apps.o xcursor-themes.o xorg-fonts.o \
	xkeyboard-config.o libxkbcommon.o pixman.o xorg-server.o libwacom.o libevdev.o libinput.o \
	xorg-drivers.o x-server-test fluxbox.o at-spi2-core.o at-spi2-atk.o cairo.o cairomm.o pango.o \
	pangomm.o librsvg.o bullet3.o hicolor-icon-theme.o gtk2.o gtk3.o gnome-icon-theme.o libindicator.o libdbusmenu.o \
	vte.o freerdp.o xrdp.o sakura.o weston.o xlunch.o lightdm.o lightdm-gtk-greeter.o cairo-dock.o cairo-dock-plugins.o

#============== [ targetfs packages ] ========================================================
xorg-proto.o:
	@echo "Xorg Protocol Headers started $(shell date -R) "
	(make -C proto 2>&1 | tee $(PKGLOGDIR)/xorg-proto.log && exit $$PIPESTATUS)
	@echo "Xorg Protocol Headers finished $(shell date -R) "

xorg-libs.o:
	@echo "Xorg Libraries started $(shell date -R) "
	(make -C libs 2>&1 | tee $(PKGLOGDIR)/xorg-libs.log && exit $$PIPESTATUS)
	@echo "Xorg Libraries finished $(shell date -R) "

mozjs.o:
	@echo "mozjs started $(shell date -R) "
	(make -C mozjs 2>&1 | tee $(PKGLOGDIR)/mozjs.log && exit $$PIPESTATUS)
	@echo "mozjs Libraries finished $(shell date -R) "

polkit.o:
	@echo "Polkit started $(shell date -R) "
	(make -C polkit 2>&1 | tee $(PKGLOGDIR)/polkit.log && exit $$PIPESTATUS)
	@echo "Polkit Libraries finished $(shell date -R) "

upower.o:
	@echo "upower started $(shell date -R) "
	(make -C upower 2>&1 | tee $(PKGLOGDIR)/upower.log && exit $$PIPESTATUS)
	@echo "upower Libraries finished $(shell date -R) "

libxklavier.o:
	@echo "libxklavier started $(shell date -R) "
	(make -C libxklavier 2>&1 | tee $(PKGLOGDIR)/libxklavier.log && exit $$PIPESTATUS)
	@echo "libxklavier finished $(shell date -R) "

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

startup-notification.o:
	@echo "startup-notification started $(shell date -R) "
	(make -C startup-notification 2>&1 | tee $(PKGLOGDIR)/startup-notification.log && exit $$PIPESTATUS)
	@echo "startup-notification finished $(shell date -R) "

libglvnd.o:
	@echo "libglvnd started $(shell date -R) "
	(make -C libglvnd 2>&1 | tee $(PKGLOGDIR)/libglvnd.log && exit $$PIPESTATUS)
	@echo "libglvnd finished $(shell date -R) "

libglvnd-static.o:
	@echo "libglvnd-static started $(shell date -R) "
	(make -C libglvnd-static 2>&1 | tee $(PKGLOGDIR)/libglvnd-static.log && exit $$PIPESTATUS)
	@echo "libglvnd-static finished $(shell date -R) "

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

libevdev.o:
	@echo "libevdev started $(shell date -R) "
	(make -C libevdev 2>&1 | tee $(PKGLOGDIR)/libevdev.log && exit $$PIPESTATUS)
	@echo "libevdev finished $(shell date -R) "

libinput.o:
	@echo "libinput started $(shell date -R) "
	(make -C libinput 2>&1 | tee $(PKGLOGDIR)/libinput.log && exit $$PIPESTATUS)
	@echo "libinput finished $(shell date -R) "

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

libxkbcommon.o:
	@echo "libxkbcommon started $(shell date -R) "
	(make -C libxkbcommon 2>&1 | tee $(PKGLOGDIR)/libxkbcommon.log && exit $$PIPESTATUS)
	@echo "libxkbcommon finished $(shell date -R) "

imlib2.o:
	@echo "imlib2 started $(shell date -R) "
	(make -C imlib2 2>&1 | tee $(PKGLOGDIR)/imlib2.log && exit $$PIPESTATUS)
	@echo "imlib2 finished $(shell date -R) "

fluxbox.o:
	@echo "fluxbox started $(shell date -R) "
	(make -C fluxbox 2>&1 | tee $(PKGLOGDIR)/fluxbox.log && exit $$PIPESTATUS)
	@echo "fluxbox finished $(shell date -R) "

at-spi2-core.o:
	@echo "at-spi2-core started $(shell date -R) "
	(make -C at-spi2-core 2>&1 | tee $(PKGLOGDIR)/at-spi2-core.log && exit $$PIPESTATUS)
	@echo "at-spi2-core finished $(shell date -R) "

at-spi2-atk.o:
	@echo "at-spi2-atk started $(shell date -R) "
	(make -C at-spi2-atk 2>&1 | tee $(PKGLOGDIR)/at-spi2-atk.log && exit $$PIPESTATUS)
	@echo "at-spi2-atk finished $(shell date -R) "

cairo.o:
	@echo "cairo started $(shell date -R) "
	(make -C cairo 2>&1 | tee $(PKGLOGDIR)/cairo.log && exit $$PIPESTATUS)
	@echo "cairo finished $(shell date -R) "

cairomm.o:
	@echo "cairomm started $(shell date -R) "
	(make -C cairomm 2>&1 | tee $(PKGLOGDIR)/cairomm.log && exit $$PIPESTATUS)
	@echo "cairomm finished $(shell date -R) "

pango.o:
	@echo "pango started $(shell date -R) "
	(make -C pango 2>&1 | tee $(PKGLOGDIR)/pango.log && exit $$PIPESTATUS)
	@echo "pango finished $(shell date -R) "

pangomm.o:
	@echo "pangomm started $(shell date -R) "
	(make -C pangomm 2>&1 | tee $(PKGLOGDIR)/pangomm.log && exit $$PIPESTATUS)
	@echo "pangomm finished $(shell date -R) "

librsvg.o:
	@echo "librsvg started $(shell date -R) "
	(make -C librsvg 2>&1 | tee $(PKGLOGDIR)/librsvg.log && exit $$PIPESTATUS)
	@echo "librsvg finished $(shell date -R) "

bullet3.o:
	@echo "bullet3 started $(shell date -R) "
	(make -C bullet3 2>&1 | tee $(PKGLOGDIR)/bullet3.log && exit $$PIPESTATUS)
	@echo "bullet3 finished $(shell date -R) "

gtk2.o:
	@echo "GTK+ 2 started $(shell date -R) "
	(make -C gtk2 2>&1 | tee $(PKGLOGDIR)/gtk2.log && exit $$PIPESTATUS)
	@echo "GTK+ 2 finished $(shell date -R) "

gtk3.o:
	@echo "GTK+ 3 started $(shell date -R) "
	(make -C gtk3 2>&1 | tee $(PKGLOGDIR)/gtk3.log && exit $$PIPESTATUS)
	@echo "GTK+ 3 finished $(shell date -R) "

gnome-icon-theme.o:
	@echo "gnome-icon-theme started $(shell date -R) "
	(make -C gnome-icon-theme 2>&1 | tee $(PKGLOGDIR)/gnome-icon-theme.log && exit $$PIPESTATUS)
	@echo "gnome-icon-theme finished $(shell date -R) "

libindicator.o:
	@echo "libindicator started $(shell date -R) "
	(make -C libindicator 2>&1 | tee $(PKGLOGDIR)/libindicator.log && exit $$PIPESTATUS)
	@echo "libindicator finished $(shell date -R) "

libdbusmenu.o:
	@echo "libdbusmenu started $(shell date -R) "
	(make -C libdbusmenu 2>&1 | tee $(PKGLOGDIR)/libdbusmenu.log && exit $$PIPESTATUS)
	@echo "libdbusmenu finished $(shell date -R) "

vte.o:
	@echo "vte started $(shell date -R) "
	(make -C vte 2>&1 | tee $(PKGLOGDIR)/vte.log && exit $$PIPESTATUS)
	@echo "vte finished $(shell date -R) "

hicolor-icon-theme.o:
	@echo "hicolor-icon-theme started $(shell date -R) "
	(make -C hicolor-icon-theme 2>&1 | tee $(PKGLOGDIR)/hicolor-icon-theme.log && exit $$PIPESTATUS)
	@echo "hicolor-icon-theme finished $(shell date -R) "

freerdp.o:
	@echo "freerdp started $(shell date -R) "
	(make -C freerdp 2>&1 | tee $(PKGLOGDIR)/freerdp.log && exit $$PIPESTATUS)
	@echo "freerdp finished $(shell date -R) "

xrdp.o:
	@echo "xrdp started $(shell date -R) "
	(make -C xrdp 2>&1 | tee $(PKGLOGDIR)/xrdp.log && exit $$PIPESTATUS)
	@echo "xrdp finished $(shell date -R) "

sakura.o:
	@echo "sakura started $(shell date -R) "
	(make -C sakura  2>&1 | tee $(PKGLOGDIR)/sakura.log && exit $$PIPESTATUS)
	@echo "sakura finished $(shell date -R) "

weston.o:
	@echo "weston started $(shell date -R) "
	(make -C weston 2>&1 | tee $(PKGLOGDIR)/weston.log && exit $$PIPESTATUS)
	@echo "weston finished $(shell date -R) "

xlunch.o:
	@echo "xlunch started $(shell date -R) "
	(make -C xlunch 2>&1 | tee $(PKGLOGDIR)/xlunch.log && exit $$PIPESTATUS)
	@echo "xlunch finished $(shell date -R) "

lightdm.o:
	@echo "lightdm started $(shell date -R) "
	(make -C lightdm 2>&1 | tee $(PKGLOGDIR)/lightdm.log && exit $$PIPESTATUS)
	@echo "lightdm finished $(shell date -R) "

lightdm-gtk-greeter.o:
	@echo "lightdm-gtk-greeter started $(shell date -R) "
	(make -C lightdm-gtk-greeter 2>&1 | tee $(PKGLOGDIR)/lightdm-gtk-greeter.log && exit $$PIPESTATUS)
	@echo "lightdm-gtk-greeter finished $(shell date -R) "

cairo-dock.o:
	@echo "cairo-dock started $(shell date -R) "
	(make -C cairo-dock 2>&1 | tee $(PKGLOGDIR)/cairo-dock.log && exit $$PIPESTATUS)
	@echo "cairo-dock finished $(shell date -R) "

cairo-dock-plugins.o:
	@echo "cairo-dock-plugins started $(shell date -R) "
	(make -C cairo-dock-plugins 2>&1 | tee $(PKGLOGDIR)/cairo-dock-plugins.log && exit $$PIPESTATUS)
	@echo "cairo-dock-plugins finished $(shell date -R) "

libva.o:
	@echo "libva started $(shell date -R) "
	(make -C libva 2>&1 | tee $(PKGLOGDIR)/libva.log && exit $$PIPESTATUS)
	@echo "libva finished $(shell date -R) "

libva-mesa.o:
	@echo "libva-mesa started $(shell date -R) "
	(make -C libva-mesa 2>&1 | tee $(PKGLOGDIR)/libva-mesa.log && exit $$PIPESTATUS)
	@echo "libva-mesa finished $(shell date -R) "

#============== [ targetfs packages ] ========================================================

clean:
	for pkg in `ls | grep -v Makefile`; do \
		make -C $$pkg clean ;\
	done ;\
  
PHONY: all targetfs xserver-test
