#include general config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

all: targetfs

targetfs: bdftopcf.o iceauth.o luit.o mkfontdir.o mkfontscale.o sessreg.o setxkbmap.o smproxy.o \
	x11perf.o xauth.o xbacklight.o xcmsdb.o xcursorgen.o xdpyinfo.o xdriinfo.o xev.o xgamma.o \
	xhost.o xinput.o xkbcomp.o xkbevd.o xkbutils.o xkill.o xlsatoms.o xlsclients.o xmessage.o \
	xmodmap.o xpr.o xprop.o xrandr.o xrdb.o xrefresh.o xset.o xsetroot.o xvinfo.o xwd.o \
	xwininfo.o xwud.o 

#============== [ targetfs packages ] ========================================================

bdftopcf.o:
	@echo "bdftopcf started $(shell date -R)"
	(make -C bdftopcf 2>&1 | tee $(PKGLOGDIR)/bdftopcf.log && exit $$PIPESTATUS)
	@echo "bdftopcf finished $(shell date -R)"

iceauth.o:
	@echo "iceauth started $(shell date -R)"
	(make -C iceauth 2>&1 | tee $(PKGLOGDIR)/iceauth.log && exit $$PIPESTATUS)
	@echo "iceauth finished $(shell date -R)"

luit.o:
	@echo "luit started $(shell date -R)"
	(make -C luit 2>&1 | tee $(PKGLOGDIR)/luit.log && exit $$PIPESTATUS)
	@echo "luit finished $(shell date -R)"

mkfontdir.o:
	@echo "mkfontdir started $(shell date -R)"
	(make -C mkfontdir 2>&1 | tee $(PKGLOGDIR)/mkfontdir.log && exit $$PIPESTATUS)
	@echo "mkfontdir finished $(shell date -R)"

mkfontscale.o:
	@echo "mkfontscale started $(shell date -R)"
	(make -C mkfontscale 2>&1 | tee $(PKGLOGDIR)/mkfontscale.log && exit $$PIPESTATUS)
	@echo "mkfontscale finished $(shell date -R)"

sessreg.o:
	@echo "sessreg started $(shell date -R)"
	(make -C sessreg 2>&1 | tee $(PKGLOGDIR)/sessreg.log && exit $$PIPESTATUS)
	@echo "sessreg finished $(shell date -R)"

setxkbmap.o:
	@echo "setxkbmap started $(shell date -R)"
	(make -C setxkbmap 2>&1 | tee $(PKGLOGDIR)/setxkbmap.log && exit $$PIPESTATUS)
	@echo "setxkbmap finished $(shell date -R)"

smproxy.o:
	@echo "smproxy started $(shell date -R)"
	(make -C smproxy 2>&1 | tee $(PKGLOGDIR)/smproxy.log && exit $$PIPESTATUS)
	@echo "smproxy finished $(shell date -R)"

x11perf.o:
	@echo "x11perf started $(shell date -R)"
	(make -C x11perf 2>&1 | tee $(PKGLOGDIR)/x11perf.log && exit $$PIPESTATUS)
	@echo "x11perf finished $(shell date -R)"

xauth.o:
	@echo "xauth started $(shell date -R)"
	(make -C xauth 2>&1 | tee $(PKGLOGDIR)/xauth.log && exit $$PIPESTATUS)
	@echo "xauth finished $(shell date -R)"

xbacklight.o:
	@echo "xbacklight started $(shell date -R)"
	(make -C xbacklight 2>&1 | tee $(PKGLOGDIR)/xbacklight.log && exit $$PIPESTATUS)
	@echo "xbacklight finished $(shell date -R)"

xcmsdb.o:
	@echo "xcmsdb started $(shell date -R)"
	(make -C xcmsdb 2>&1 | tee $(PKGLOGDIR)/xcmsdb.log && exit $$PIPESTATUS)
	@echo "xcmsdb finished $(shell date -R)"

xcursorgen.o:
	@echo "xcursorgen started $(shell date -R)"
	(make -C xcursorgen 2>&1 | tee $(PKGLOGDIR)/xcursorgen.log && exit $$PIPESTATUS)
	@echo "xcursorgen finished $(shell date -R)"

xdpyinfo.o:
	@echo "xdpyinfo started $(shell date -R)"
	(make -C xdpyinfo 2>&1 | tee $(PKGLOGDIR)/xdpyinfo.log && exit $$PIPESTATUS)
	@echo "xdpyinfo finished $(shell date -R)"

xdriinfo.o:
	@echo "xdriinfo started $(shell date -R)"
	(make -C xdriinfo 2>&1 | tee $(PKGLOGDIR)/xdriinfo.log && exit $$PIPESTATUS)
	@echo "xdriinfo finished $(shell date -R)"

xev.o:
	@echo "xev started $(shell date -R)"
	(make -C xev 2>&1 | tee $(PKGLOGDIR)/xev.log && exit $$PIPESTATUS)
	@echo "xev finished $(shell date -R)"

xgamma.o:
	@echo "xgamma started $(shell date -R)"
	(make -C xgamma 2>&1 | tee $(PKGLOGDIR)/xgamma.log && exit $$PIPESTATUS)
	@echo "xgamma finished $(shell date -R)"

xhost.o:
	@echo "xhost started $(shell date -R)"
	(make -C xhost 2>&1 | tee $(PKGLOGDIR)/xhost.log && exit $$PIPESTATUS)
	@echo "xhost finished $(shell date -R)"

xinput.o:
	@echo "xinput started $(shell date -R)"
	(make -C xinput 2>&1 | tee $(PKGLOGDIR)/xinput.log && exit $$PIPESTATUS)
	@echo "xinput finished $(shell date -R)"

xkbcomp.o:
	@echo "xkbcomp started $(shell date -R)"
	(make -C xkbcomp 2>&1 | tee $(PKGLOGDIR)/xkbcomp.log && exit $$PIPESTATUS)
	@echo "xkbcomp finished $(shell date -R)"

xkbevd.o:
	@echo "xkbevd started $(shell date -R)"
	(make -C xkbevd 2>&1 | tee $(PKGLOGDIR)/xkbevd.log && exit $$PIPESTATUS)
	@echo "xkbevd finished $(shell date -R)"

xkbutils.o:
	@echo "xkbutils started $(shell date -R)"
	(make -C xkbutils 2>&1 | tee $(PKGLOGDIR)/xkbutils.log && exit $$PIPESTATUS)
	@echo "xkbutils finished $(shell date -R)"

xkill.o:
	@echo "xkill started $(shell date -R)"
	(make -C xkill 2>&1 | tee $(PKGLOGDIR)/xkill.log && exit $$PIPESTATUS)
	@echo "xkill finished $(shell date -R)"

xlsatoms.o:
	@echo "xlsatoms started $(shell date -R)"
	(make -C xlsatoms 2>&1 | tee $(PKGLOGDIR)/xlsatoms.log && exit $$PIPESTATUS)
	@echo "xlsatoms finished $(shell date -R)"

xlsclients.o:
	@echo "xlsclients started $(shell date -R)"
	(make -C xlsclients 2>&1 | tee $(PKGLOGDIR)/xlsclients.log && exit $$PIPESTATUS)
	@echo "xlsclients finished $(shell date -R)"

xmessage.o:
	@echo "xmessage started $(shell date -R)"
	(make -C xmessage 2>&1 | tee $(PKGLOGDIR)/xmessage.log && exit $$PIPESTATUS)
	@echo "xmessage finished $(shell date -R)"

xmodmap.o:
	@echo "xmodmap started $(shell date -R)"
	(make -C xmodmap 2>&1 | tee $(PKGLOGDIR)/xmodmap.log && exit $$PIPESTATUS)
	@echo "xmodmap finished $(shell date -R)"

xpr.o:
	@echo "xpr started $(shell date -R)"
	(make -C xpr 2>&1 | tee $(PKGLOGDIR)/xpr.log && exit $$PIPESTATUS)
	@echo "xpr finished $(shell date -R)"

xprop.o:
	@echo "xprop started $(shell date -R)"
	(make -C xprop 2>&1 | tee $(PKGLOGDIR)/xprop.log && exit $$PIPESTATUS)
	@echo "xprop finished $(shell date -R)"

xrandr.o:
	@echo "xrandr started $(shell date -R)"
	(make -C xrandr 2>&1 | tee $(PKGLOGDIR)/xrandr.log && exit $$PIPESTATUS)
	@echo "xrandr finished $(shell date -R)"

xrdb.o:
	@echo "xrdb started $(shell date -R)"
	(make -C xrdb 2>&1 | tee $(PKGLOGDIR)/xrdb.log && exit $$PIPESTATUS)
	@echo "xrdb finished $(shell date -R)"

xrefresh.o:
	@echo "xrefresh started $(shell date -R)"
	(make -C xrefresh 2>&1 | tee $(PKGLOGDIR)/xrefresh.log && exit $$PIPESTATUS)
	@echo "xrefresh finished $(shell date -R)"

xset.o:
	@echo "xset started $(shell date -R)"
	(make -C xset 2>&1 | tee $(PKGLOGDIR)/xset.log && exit $$PIPESTATUS)
	@echo "xset finished $(shell date -R)"

xsetroot.o:
	@echo "xsetroot started $(shell date -R)"
	(make -C xsetroot 2>&1 | tee $(PKGLOGDIR)/xsetroot.log && exit $$PIPESTATUS)
	@echo "xsetroot finished $(shell date -R)"

xvinfo.o:
	@echo "xvinfo started $(shell date -R)"
	(make -C xvinfo 2>&1 | tee $(PKGLOGDIR)/xvinfo.log && exit $$PIPESTATUS)
	@echo "xvinfo finished $(shell date -R)"

xwd.o:
	@echo "xwd started $(shell date -R)"
	(make -C xwd 2>&1 | tee $(PKGLOGDIR)/xwd.log && exit $$PIPESTATUS)
	@echo "xwd finished $(shell date -R)"

xwininfo.o:
	@echo "xwininfo started $(shell date -R)"
	(make -C xwininfo 2>&1 | tee $(PKGLOGDIR)/xwininfo.log && exit $$PIPESTATUS)
	@echo "xwininfo finished $(shell date -R)"

xwud.o:
	@echo "xwud started $(shell date -R)"
	(make -C xwud 2>&1 | tee $(PKGLOGDIR)/xwud.log && exit $$PIPESTATUS)
	@echo "xwud finished $(shell date -R)"

#============== [ targetfs packages ] ========================================================

clean:
	for pkg in `ls | grep -v Makefile`; do \
		make -C $$pkg clean ;\
	done ;\
  
PHONY: all targetfs
