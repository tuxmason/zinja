#include general config file
include ../../conf/environment.mk
include ../../conf/shell-env.mk

all: core

core: 

#============== [ base packages ] ========================================================

#============== [ base packages ] ========================================================

strip.o:
	@echo "Stripping rootfs"

clean:
	for pkg in `ls | grep -v Makefile`; do \
		make -C $$pkg clean ;\
	done ;\
  
PHONY: all core
