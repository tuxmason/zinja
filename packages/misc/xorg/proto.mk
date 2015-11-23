#include general config file
include ../../../conf/environment.mk
include ../../../conf/shell-env.mk

all: targetfs

targetfs: util-macros.o bigreqsproto.o compositeproto.o damageproto.o dmxproto.o dri2proto.o \
	dri3proto.o fixesproto.o fontsproto.o glproto.o inputproto.o kbproto.o presentproto.o \
	randrproto.o recordproto.o renderproto.o resourceproto.o scrnsaverproto.o videoproto.o \
	xcmiscproto.o xextproto.o xf86bigfontproto.o xf86dgaproto.o xf86driproto.o \
	xf86vidmodeproto.o xineramaproto.o xproto.o xcb-proto.o

#============== [ targetfs packages ] ========================================================

util-macros.o:
	@echo "util-macros started $(shell date -R)"
	(make -C util-macros 2>&1 | tee $(PKGLOGDIR)/util-macros.log && exit $$PIPESTATUS)
	@echo "util-macros finished $(shell date -R)"

bigreqsproto.o:
	@echo "bigreqsproto started $(shell date -R)"
	(make -C bigreqsproto 2>&1 | tee $(PKGLOGDIR)/bigreqsproto.log && exit $$PIPESTATUS)
	@echo "bigreqsproto finished $(shell date -R)"

compositeproto.o:
	@echo "compositeproto started $(shell date -R)"
	(make -C compositeproto 2>&1 | tee $(PKGLOGDIR)/compositeproto.log && exit $$PIPESTATUS)
	@echo "compositeproto finished $(shell date -R)"

damageproto.o:
	@echo "damageproto started $(shell date -R)"
	(make -C damageproto 2>&1 | tee $(PKGLOGDIR)/damageproto.log && exit $$PIPESTATUS)
	@echo "damageproto finished $(shell date -R)"

dmxproto.o:
	@echo "dmxproto started $(shell date -R)"
	(make -C dmxproto 2>&1 | tee $(PKGLOGDIR)/dmxproto.log && exit $$PIPESTATUS)
	@echo "dmxproto finished $(shell date -R)"

dri2proto.o:
	@echo "dri2proto started $(shell date -R)"
	(make -C dri2proto 2>&1 | tee $(PKGLOGDIR)/dri2proto.log && exit $$PIPESTATUS)
	@echo "dri2proto finished $(shell date -R)"

dri3proto.o:
	@echo "dri3proto started $(shell date -R)"
	(make -C dri3proto 2>&1 | tee $(PKGLOGDIR)/dri3proto.log && exit $$PIPESTATUS)
	@echo "dri3proto finished $(shell date -R)"

fixesproto.o:
	@echo "fixesproto started $(shell date -R)"
	(make -C fixesproto 2>&1 | tee $(PKGLOGDIR)/fixesproto.log && exit $$PIPESTATUS)
	@echo "fixesproto finished $(shell date -R)"

fontsproto.o:
	@echo "fontsproto started $(shell date -R)"
	(make -C fontsproto 2>&1 | tee $(PKGLOGDIR)/fontsproto.log && exit $$PIPESTATUS)
	@echo "fontsproto finished $(shell date -R)"

glproto.o:
	@echo "glproto started $(shell date -R)"
	(make -C glproto 2>&1 | tee $(PKGLOGDIR)/glproto.log && exit $$PIPESTATUS)
	@echo "glproto finished $(shell date -R)"

inputproto.o:
	@echo "inputproto started $(shell date -R)"
	(make -C inputproto 2>&1 | tee $(PKGLOGDIR)/inputproto.log && exit $$PIPESTATUS)
	@echo "inputproto finished $(shell date -R)"

kbproto.o:
	@echo "kbproto started $(shell date -R)"
	(make -C kbproto 2>&1 | tee $(PKGLOGDIR)/kbproto.log && exit $$PIPESTATUS)
	@echo "kbproto finished $(shell date -R)"

presentproto.o:
	@echo "presentproto started $(shell date -R)"
	(make -C presentproto 2>&1 | tee $(PKGLOGDIR)/presentproto.log && exit $$PIPESTATUS)
	@echo "presentproto finished $(shell date -R)"

randrproto.o:
	@echo "randrproto started $(shell date -R)"
	(make -C randrproto 2>&1 | tee $(PKGLOGDIR)/randrproto.log && exit $$PIPESTATUS)
	@echo "randrproto finished $(shell date -R)"

recordproto.o:
	@echo "recordproto started $(shell date -R)"
	(make -C recordproto 2>&1 | tee $(PKGLOGDIR)/recordproto.log && exit $$PIPESTATUS)
	@echo "recordproto finished $(shell date -R)"

renderproto.o:
	@echo "renderproto started $(shell date -R)"
	(make -C renderproto 2>&1 | tee $(PKGLOGDIR)/renderproto.log && exit $$PIPESTATUS)
	@echo "renderproto finished $(shell date -R)"

resourceproto.o:
	@echo "resourceproto started $(shell date -R)"
	(make -C resourceproto 2>&1 | tee $(PKGLOGDIR)/resourceproto.log && exit $$PIPESTATUS)
	@echo "resourceproto finished $(shell date -R)"

scrnsaverproto.o:
	@echo "scrnsaverproto started $(shell date -R)"
	(make -C scrnsaverproto 2>&1 | tee $(PKGLOGDIR)/scrnsaverproto.log && exit $$PIPESTATUS)
	@echo "scrnsaverproto finished $(shell date -R)"

videoproto.o:
	@echo "videoproto started $(shell date -R)"
	(make -C videoproto 2>&1 | tee $(PKGLOGDIR)/videoproto.log && exit $$PIPESTATUS)
	@echo "videoproto finished $(shell date -R)"

xcmiscproto.o:
	@echo "xcmiscproto started $(shell date -R)"
	(make -C xcmiscproto 2>&1 | tee $(PKGLOGDIR)/xcmiscproto.log && exit $$PIPESTATUS)
	@echo "xcmiscproto finished $(shell date -R)"

xextproto.o:
	@echo "xextproto started $(shell date -R)"
	(make -C xextproto 2>&1 | tee $(PKGLOGDIR)/xextproto.log && exit $$PIPESTATUS)
	@echo "xextproto finished $(shell date -R)"

xf86bigfontproto.o:
	@echo "xf86bigfontproto started $(shell date -R)"
	(make -C xf86bigfontproto 2>&1 | tee $(PKGLOGDIR)/xf86bigfontproto.log && exit $$PIPESTATUS)
	@echo "xf86bigfontproto finished $(shell date -R)"

xf86dgaproto.o:
	@echo "xf86dgaproto started $(shell date -R)"
	(make -C xf86dgaproto 2>&1 | tee $(PKGLOGDIR)/xf86dgaproto.log && exit $$PIPESTATUS)
	@echo "xf86dgaproto finished $(shell date -R)"

xf86driproto.o:
	@echo "xf86driproto started $(shell date -R)"
	(make -C xf86driproto 2>&1 | tee $(PKGLOGDIR)/xf86driproto.log && exit $$PIPESTATUS)
	@echo "xf86driproto finished $(shell date -R)"

xf86vidmodeproto.o:
	@echo "xf86vidmodeproto started $(shell date -R)"
	(make -C xf86vidmodeproto 2>&1 | tee $(PKGLOGDIR)/xf86vidmodeproto.log && exit $$PIPESTATUS)
	@echo "xf86vidmodeproto finished $(shell date -R)"

xineramaproto.o:
	@echo "xineramaproto started $(shell date -R)"
	(make -C xineramaproto 2>&1 | tee $(PKGLOGDIR)/xineramaproto.log && exit $$PIPESTATUS)
	@echo "xineramaproto finished $(shell date -R)"

xproto.o:
	@echo "xproto started $(shell date -R)"
	(make -C xproto 2>&1 | tee $(PKGLOGDIR)/xproto.log && exit $$PIPESTATUS)
	@echo "xproto finished $(shell date -R)"

xcb-proto.o:
	@echo "xcb-proto started $(shell date -R)"
	(make -C xcb-proto 2>&1 | tee $(PKGLOGDIR)/xcb-proto.log && exit $$PIPESTATUS)
	@echo "xcb-proto finished $(shell date -R)"

#============== [ targetfs packages ] ========================================================

clean:
	for pkg in `ls | grep -v Makefile`; do \
		make -C $$pkg clean ;\
	done ;\
  
PHONY: all targetfs
