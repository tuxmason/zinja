#include general config file
include ../../conf/environment.mk
include ../../conf/shell-env.mk

all: targetfs

targetfs: giflib.o libwebp.o

#targetfs: which.o libssh2.o pcre.o libxml2.o glib2.o fribidi.o sqlite3.o babl.o exiv2.o ijs.o \
# libpng.o giflib.o libjpeg-turbo.o jasper.o tiff.o lcms2.o libmng.o libexif.o libwebp.o\
# freetype.o fontconfig.o graphite2.o harfbuzz.o alsa-lib.o opus.o libcddb.o libcdio.o \
# libcdio-paranoia.o libass.o fdk-aac.o faac.o libogg.o libvorbis.o flac.o \
#	libsndfile.o libsamplerate.o alsa-utils.o speexdsp.o speex.o sbc.o libtheora.o lame.o

#============== [ targetfs packages ] ========================================================
which.o:
	@echo "which started $(shell date -R) "
	(make -C which 2>&1 | tee $(PKGLOGDIR)/which.log && exit $$PIPESTATUS)
	@echo "which finished $(shell date -R) "

libssh2.o:
	@echo "libssh2 started $(shell date -R) "
	(make -C libssh2 2>&1 | tee $(PKGLOGDIR)/libssh2.log && exit $$PIPESTATUS)
	@echo "libssh2 finished $(shell date -R) "

pcre.o:
	@echo "pcre started $(shell date -R) "
	(make -C pcre 2>&1 | tee $(PKGLOGDIR)/pcre.log && exit $$PIPESTATUS)
	@echo "pcre finished $(shell date -R) "

libxml2.o:
	@echo "libxml2 started $(shell date -R) "
	(make -C libxml2 2>&1 | tee $(PKGLOGDIR)/libxml2.log && exit $$PIPESTATUS)
	@echo "libxml2 finished $(shell date -R) "

glib2.o:
	@echo "glib2 started $(shell date -R) "
	(make -C glib2 2>&1 | tee $(PKGLOGDIR)/glib2.log && exit $$PIPESTATUS)
	@echo "glib2 finished $(shell date -R) "

fribidi.o:
	@echo "fribidi started $(shell date -R) "
	(make -C fribidi 2>&1 | tee $(PKGLOGDIR)/fribidi.log && exit $$PIPESTATUS)
	@echo "fribidi finished $(shell date -R) "

sqlite3.o:
	@echo "sqlite3 started $(shell date -R) "
	(make -C sqlite3 2>&1 | tee $(PKGLOGDIR)/sqlite3.log && exit $$PIPESTATUS)
	@echo "sqlite3 finished $(shell date -R) "

giflib.o:
	@echo "giflib started $(shell date -R) "
	(make -C giflib 2>&1 | tee $(PKGLOGDIR)/giflib.log && exit $$PIPESTATUS)
	@echo "giflib finished $(shell date -R) "

babl.o:
	@echo "babl started $(shell date -R) "
	(make -C babl 2>&1 | tee $(PKGLOGDIR)/babl.log && exit $$PIPESTATUS)
	@echo "babl finished $(shell date -R) "

exiv2.o:
	@echo "exiv2 started $(shell date -R) "
	(make -C exiv2 2>&1 | tee $(PKGLOGDIR)/exiv2.log && exit $$PIPESTATUS)
	@echo "exiv2 finished $(shell date -R) "

ijs.o:
	@echo "ijs started $(shell date -R) "
	(make -C ijs 2>&1 | tee $(PKGLOGDIR)/ijs.log && exit $$PIPESTATUS)
	@echo "ijs finished $(shell date -R) "

libpng.o:
	@echo "libpng started $(shell date -R) "
	(make -C libpng 2>&1 | tee $(PKGLOGDIR)/libpng.log && exit $$PIPESTATUS)
	@echo "libpng finished $(shell date -R) "

libjpeg-turbo.o:
	@echo "libjpeg-turbo started $(shell date -R) "
	(make -C libjpeg-turbo 2>&1 | tee $(PKGLOGDIR)/libjpeg-turbo.log && exit $$PIPESTATUS)
	@echo "lib finished $(shell date -R) "

jasper.o:
	@echo "jasper started $(shell date -R) "
	(make -C jasper 2>&1 | tee $(PKGLOGDIR)/jasper.log && exit $$PIPESTATUS)
	@echo "jasper finished $(shell date -R) "

tiff.o:
	@echo "tiff started $(shell date -R) "
	(make -C tiff 2>&1 | tee $(PKGLOGDIR)/tiff.log && exit $$PIPESTATUS)
	@echo "tiff finished $(shell date -R) "

lcsm2.o:
	@echo "lcms2 started $(shell date -R) "
	(make -C lcms2 2>&1 | tee $(PKGLOGDIR)/lcms2.log && exit $$PIPESTATUS)
	@echo "lcms2 finished $(shell date -R) "

libmng.o:
	@echo "libmng started $(shell date -R) "
	(make -C libmng 2>&1 | tee $(PKGLOGDIR)/libmng.log && exit $$PIPESTATUS)
	@echo "libmng finished $(shell date -R) "

libexif.o:
	@echo "libexif started $(shell date -R) "
	(make -C libexif 2>&1 | tee $(PKGLOGDIR)/libexif.log && exit $$PIPESTATUS)
	@echo "libexif finished $(shell date -R) "

libwebp.o:
	@echo "libwebp started $(shell date -R) "
	(make -C libwebp 2>&1 | tee $(PKGLOGDIR)/libwebp.log && exit $$PIPESTATUS)
	@echo "libwebp finished $(shell date -R) "

freetype.o:
	@echo "freetype started $(shell date -R) "
	(make -C freetype 2>&1 | tee $(PKGLOGDIR)/freetype.log && exit $$PIPESTATUS)
	@echo "freetype finished $(shell date -R) "

fontconfig.o:
	@echo "fontconfig started $(shell date -R) "
	(make -C fontconfig 2>&1 | tee $(PKGLOGDIR)/fontconfig.log && exit $$PIPESTATUS)
	@echo "fontconfig finished $(shell date -R) "

graphite2.o:
	@echo "graphite2 started $(shell date -R) "
	(make -C graphite2 2>&1 | tee $(PKGLOGDIR)/graphite2.log && exit $$PIPESTATUS)
	@echo "graphite2 finished $(shell date -R) "

harfbuzz.o:
	@echo "harfbuzz started $(shell date -R) "
	(make -C harfbuzz 2>&1 | tee $(PKGLOGDIR)/harfbuzz.log && exit $$PIPESTATUS)
	@echo "harfbuzz finished $(shell date -R) "

alsa-lib.o:
	@echo "alsa-lib started $(shell date -R) "
	(make -C alsa-lib 2>&1 | tee $(PKGLOGDIR)/alsa-lib.log && exit $$PIPESTATUS)
	@echo "alsa-lib finished $(shell date -R) "

libass.o:
	@echo "libass started $(shell date -R) "
	(make -C libass 2>&1 | tee $(PKGLOGDIR)/libass.log && exit $$PIPESTATUS)
	@echo "libass finished $(shell date -R) "

fdk-aac.o:
	@echo "fdk-aac started $(shell date -R) "
	(make -C fdk-aac 2>&1 | tee $(PKGLOGDIR)/fdk-aac.log && exit $$PIPESTATUS)
	@echo "fdk-aac finished $(shell date -R) "

faac.o:
	@echo "faac started $(shell date -R) "
	(make -C faac 2>&1 | tee $(PKGLOGDIR)/faac.log && exit $$PIPESTATUS)
	@echo "faac finished $(shell date -R) "

libogg.o:
	@echo "libogg started $(shell date -R) "
	(make -C libogg 2>&1 | tee $(PKGLOGDIR)/libogg.log && exit $$PIPESTATUS)
	@echo "libogg finished $(shell date -R) "

libvorbis.o:
	@echo "libvorbis started $(shell date -R) "
	(make -C libvorbis 2>&1 | tee $(PKGLOGDIR)/libvorbis.log && exit $$PIPESTATUS)
	@echo "libvorbis finished $(shell date -R) "

flac.o:
	@echo "flac started $(shell date -R) "
	(make -C flac 2>&1 | tee $(PKGLOGDIR)/flac.log && exit $$PIPESTATUS)
	@echo "flac finished $(shell date -R) "

libsndfile.o:
	@echo "libsndfile started $(shell date -R) "
	(make -C libsndfile 2>&1 | tee $(PKGLOGDIR)/libsndfile.log && exit $$PIPESTATUS)
	@echo "libsndfile finished $(shell date -R) "

libsamplerate.o:
	@echo "libsamplerate started $(shell date -R) "
	(make -C libsamplerate 2>&1 | tee $(PKGLOGDIR)/libsamplerate.log && exit $$PIPESTATUS)
	@echo "libsamplerate finished $(shell date -R) "

alsa-utils.o:
	@echo "alsa-utils started $(shell date -R) "
	(make -C alsa-utils 2>&1 | tee $(PKGLOGDIR)/alsa-utils.log && exit $$PIPESTATUS)
	@echo "alsa-utils finished $(shell date -R) "

speexdsp.o:
	@echo "speexdsp started $(shell date -R) "
	(make -C speexdsp 2>&1 | tee $(PKGLOGDIR)/speexdsp.log && exit $$PIPESTATUS)
	@echo "speexdsp finished $(shell date -R) "

speex.o:
	@echo "speex started $(shell date -R) "
	(make -C speex 2>&1 | tee $(PKGLOGDIR)/speex.log && exit $$PIPESTATUS)
	@echo "speex finished $(shell date -R) "

sbc.o:
	@echo "sbc started $(shell date -R) "
	(make -C sbc 2>&1 | tee $(PKGLOGDIR)/sbc.log && exit $$PIPESTATUS)
	@echo "sbc finished $(shell date -R) "

libtheora.o:
	@echo "libtheora started $(shell date -R) "
	(make -C libtheora 2>&1 | tee $(PKGLOGDIR)/libtheora.log && exit $$PIPESTATUS)
	@echo "libtheora finished $(shell date -R) "

lame.o:
	@echo "lame started $(shell date -R) "
	(make -C lame 2>&1 | tee $(PKGLOGDIR)/libtheora.log && exit $$PIPESTATUS)
	@echo "lame finished $(shell date -R) "

opus.o:
	@echo "opus started $(shell date -R) "
	(make -C opus 2>&1 | tee $(PKGLOGDIR)/opus.log && exit $$PIPESTATUS)
	@echo "opus finished $(shell date -R) "

libcddb.o:
	@echo "libcddb started $(shell date -R) "
	(make -C libcddb 2>&1 | tee $(PKGLOGDIR)/libcddb.log && exit $$PIPESTATUS)
	@echo "libcddb finished $(shell date -R) "

libcdio.o:
	@echo "libcdio started $(shell date -R) "
	(make -C libcdio 2>&1 | tee $(PKGLOGDIR)/libcdio.log && exit $$PIPESTATUS)
	@echo "libcdio finished $(shell date -R) "

libcdio-paranoia.o:
	@echo "libcdio-paranoia started $(shell date -R) "
	(make -C libcdio-paranoia 2>&1 | tee $(PKGLOGDIR)/libcdio-paranoia.log && exit $$PIPESTATUS)
	@echo "libcdio-paranoia finished $(shell date -R) "

#============== [ targetfs packages ] ========================================================

strip.o:
	@echo "Stripping targetfs"
	find $(SYSROOTDIR)/{,usr/}{bin,lib,sbin} -type f -exec $(CROSSTOOLS)/bin/$(TARGETARCH)-strip --strip-debug '{}' ';'

clean:
	for pkg in `ls | grep -v Makefile`; do \
		make -C $$pkg clean ;\
	done ;\
  
PHONY: all targetfs
