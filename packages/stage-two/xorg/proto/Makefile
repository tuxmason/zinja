#include general config file
include ../../../../conf/environment.mk
include ../../../../conf/shell-env.mk

all: xorg-proto

xorg-proto: util-macros.o xorgproto.o xcb-proto.o

util-macros.o:
	@echo "util-macros started $(shell date -R)"
	(make -C util-macros 2>&1 | tee $(PKGLOGDIR)/util-macros.log && exit $$PIPESTATUS)
	@echo "util-macros finished $(shell date -R)"

xorgproto.o:
	@echo "xorgproto started $(shell date -R)"
	(make -C xorgproto 2>&1 | tee $(PKGLOGDIR)/xorgproto.log && exit $$PIPESTATUS)
	@echo "xorgproto finished $(shell date -R)"

xcb-proto.o:
	@echo "xcb-proto started $(shell date -R)"
	(make -C xcb-proto 2>&1 | tee $(PKGLOGDIR)/xcb-proto.log && exit $$PIPESTATUS)
	@echo "xcb-proto finished $(shell date -R)"

clean:
	@find . -maxdepth 1 -mindepth 1 -type d -exec make -C "{}" clean \;
  
PHONY: all xorg-proto
