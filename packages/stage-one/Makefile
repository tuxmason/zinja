#include general config file
include ../../conf/environment.mk

all: cross-tools

cross-tools: 

#==================== Cross Toolchain ================================================

#==================== End Cross Toolchain ============================================

clean:
	@for dir in `find -type d | grep -v '^.\$$' `; do \
		make -C $$dir clean ;\
	done ;\

PHONY: all cross-tools
