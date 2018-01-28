PKGNAME := glew
PKGVER := 2.1.0
PKGSRC := $(PKGNAME)-$(PKGVER).tgz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
SRCURL := https://sourceforge.net/projects/glew/files/glew/$(PKGVER)/$(PKGSRC)
COPTS := 

CC := "${CC}"
CXX := "${CXX}"
LD := $(CC) 
STRIP := "${STRIP}"
CFLAGS := "$$CFLAGS -fPIC"
