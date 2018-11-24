#Makefile wrapper

all: clean host target

host:
	make -f Makefile.host

target:
	make -f Makefile.target

clean-host:
	make -f Makefile.host clean

clean-target:
	make -f Makefile.target clean

clean: clean-host clean-target

PHONY: all clean
