#include general config file
include ../../conf/environment.mk
include ../../conf/shell-env.mk

all: targetfs

targetfs: which.o gpm.o popt.o libssh2.o pcre.o gsl.o nettle.o libxml2.o libxslt.o neon.o \
	libevdev.o mtdev.o libatomic_ops.o libpciaccess.o libsigcplusplus.o libusb.o \
	libusb-compat.o usbutils.o glib2.o dbus-glib.o fribidi.o sqlite3.o babl.o exiv2.o \
	ijs.o libpng.o giflib.o libjpeg-turbo.o jasper.o tiff.o lcms2.o openjpeg.o openjpeg2.o \
	pixman.o LibRaw.o libmng.o libexif.o libwebp.o freetype.o fontconfig.o graphite2.o \
	harfbuzz.o slang.o alsa-lib.o gstreamer.o opus.o a52dec.o libdiscid.o libdvdcss.o \
	libdvdread.o libdvdnav.o libcddb.o libcdio.o libcdio-paranoia.o libmad.o libmusicbrainz.o \
	libass.o fdk-aac.o faac.o faad2.o libogg.o libvorbis.o soundtouch.o flac.o audiofile.o \
	libsndfile.o libsamplerate.o alsa-utils.o speexdsp.o speex.o taglib.o sbc.o libtheora.o \
	lame.o xvidcore.o mpg123.o

#============== [ targetfs packages ] ========================================================
which.o:
	@echo "which started $(shell date -R) "
	(make -C which 2>&1 | tee $(PKGLOGDIR)/which.log && exit $$PIPESTATUS)
	@echo "which finished $(shell date -R) "

gpm.o:
	@echo "gpm started $(shell date -R) "
	(make -C gpm 2>&1 | tee $(PKGLOGDIR)/gpm.log && exit $$PIPESTATUS)
	@echo "gpm finished $(shell date -R) "

popt.o:
	@echo "popt started $(shell date -R) "
	(make -C popt 2>&1 | tee $(PKGLOGDIR)/popt.log && exit $$PIPESTATUS)
	@echo "popt finished $(shell date -R) "

libssh2.o:
	@echo "libssh2 started $(shell date -R) "
	(make -C libssh2 2>&1 | tee $(PKGLOGDIR)/libssh2.log && exit $$PIPESTATUS)
	@echo "libssh2 finished $(shell date -R) "

pcre.o:
	@echo "pcre started $(shell date -R) "
	(make -C pcre 2>&1 | tee $(PKGLOGDIR)/pcre.log && exit $$PIPESTATUS)
	@echo "pcre finished $(shell date -R) "

gsl.o:
	@echo "gsl started $(shell date -R) "
	(make -C gsl 2>&1 | tee $(PKGLOGDIR)/gsl.log && exit $$PIPESTATUS)
	@echo "gsl finished $(shell date -R) "

nettle.o:
	@echo "nettle started $(shell date -R) "
	(make -C nettle 2>&1 | tee $(PKGLOGDIR)/nettle.log && exit $$PIPESTATUS)
	@echo "nettle finished $(shell date -R) "

libxml2.o:
	@echo "libxml2 started $(shell date -R) "
	(make -C libxml2 2>&1 | tee $(PKGLOGDIR)/libxml2.log && exit $$PIPESTATUS)
	@echo "libxml2 finished $(shell date -R) "

libxslt.o:
	@echo "libxslt started $(shell date -R) "
	(make -C libxslt 2>&1 | tee $(PKGLOGDIR)/libxslt.log && exit $$PIPESTATUS)
	@echo "libxslt finished $(shell date -R) "

neon.o:
	@echo "neon started $(shell date -R) "
	(make -C neon 2>&1 | tee $(PKGLOGDIR)/neon.log && exit $$PIPESTATUS)
	@echo "neon finished $(shell date -R) "

libevdev.o:
	@echo "libevdev started $(shell date -R) "
	(make -C libevdev 2>&1 | tee $(PKGLOGDIR)/libevdev.log && exit $$PIPESTATUS)
	@echo "libevdev finished $(shell date -R) "

mtdev.o:
	@echo "mtdev started $(shell date -R) "
	(make -C mtdev 2>&1 | tee $(PKGLOGDIR)/mtdev.log && exit $$PIPESTATUS)
	@echo "mtdev finished $(shell date -R) "

libatomic_ops.o:
	@echo "libatomic_ops started $(shell date -R) "
	(make -C libatomic_ops 2>&1 | tee $(PKGLOGDIR)/libatomic_ops.log && exit $$PIPESTATUS)
	@echo "libatomic_ops finished $(shell date -R) "

libpciaccess.o:
	@echo "libpciaccess started $(shell date -R) "
	(make -C libpciaccess 2>&1 | tee $(PKGLOGDIR)/libpciaccess.log && exit $$PIPESTATUS)
	@echo "libpciaccess finished $(shell date -R) "

libsigcplusplus.o:
	@echo "libsigc++ started $(shell date -R) "
	(make -C libsigc++ 2>&1 | tee $(PKGLOGDIR)/libsigc++.log && exit $$PIPESTATUS)
	@echo "libsigc++ finished $(shell date -R) "

libusb.o:
	@echo "libusb started $(shell date -R) "
	(make -C libusb 2>&1 | tee $(PKGLOGDIR)/libusb.log && exit $$PIPESTATUS)
	@echo "libusb finished $(shell date -R) "

libusb-compat.o:
	@echo "libusb-compat started $(shell date -R) "
	(make -C libusb-compat 2>&1 | tee $(PKGLOGDIR)/libusb-compat.log && exit $$PIPESTATUS)
	@echo "libusb-compat finished $(shell date -R) "

usbutils.o:
	@echo "usbutils started $(shell date -R) "
	(make -C usbutils 2>&1 | tee $(PKGLOGDIR)/usbutils.log && exit $$PIPESTATUS)
	@echo "usbutils finished $(shell date -R) "

glib2.o:
	@echo "glib2 started $(shell date -R) "
	(make -C glib2 2>&1 | tee $(PKGLOGDIR)/glib2.log && exit $$PIPESTATUS)
	@echo "glib2 finished $(shell date -R) "

dbus-glib.o:
	@echo "dbus-glib started $(shell date -R) "
	(make -C dbus-glib 2>&1 | tee $(PKGLOGDIR)/dbus-glib.log && exit $$PIPESTATUS)
	@echo "dbus-glib finished $(shell date -R) "

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

lcms2.o:
	@echo "lcms2 started $(shell date -R) "
	(make -C lcms2 2>&1 | tee $(PKGLOGDIR)/lcms2.log && exit $$PIPESTATUS)
	@echo "lcms2 finished $(shell date -R) "

openjpeg.o:
	@echo "openjpeg started $(shell date -R) "
	(make -C openjpeg 2>&1 | tee $(PKGLOGDIR)/openjpeg.log && exit $$PIPESTATUS)
	@echo "openjpeg finished $(shell date -R) "

openjpeg2.o:
	@echo "openjpeg2 started $(shell date -R) "
	(make -C openjpeg2 2>&1 | tee $(PKGLOGDIR)/openjpeg2.log && exit $$PIPESTATUS)
	@echo "openjpeg2 finished $(shell date -R) "

pixman.o:
	@echo "pixman started $(shell date -R) "
	(make -C pixman 2>&1 | tee $(PKGLOGDIR)/pixman.log && exit $$PIPESTATUS)
	@echo "pixman finished $(shell date -R) "

LibRaw.o:
	@echo "LibRaw started $(shell date -R) "
	(make -C LibRaw 2>&1 | tee $(PKGLOGDIR)/LibRaw.log && exit $$PIPESTATUS)
	@echo "LibRaw finished $(shell date -R) "

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

slang.o:
	@echo "slang started $(shell date -R) "
	(make -C slang 2>&1 | tee $(PKGLOGDIR)/slang.log && exit $$PIPESTATUS)
	@echo "slang finished $(shell date -R) "

aalib.o:
	@echo "aalib started $(shell date -R) "
	(make -C aalib 2>&1 | tee $(PKGLOGDIR)/aalib.log && exit $$PIPESTATUS)
	@echo "aalib finished $(shell date -R) "

alsa-lib.o:
	@echo "alsa-lib started $(shell date -R) "
	(make -C alsa-lib 2>&1 | tee $(PKGLOGDIR)/alsa-lib.log && exit $$PIPESTATUS)
	@echo "alsa-lib finished $(shell date -R) "

gstreamer.o:
	@echo "gstreamer started $(shell date -R) "
	(make -C gstreamer 2>&1 | tee $(PKGLOGDIR)/gstreamer.log && exit $$PIPESTATUS)
	@echo "gstreamer finished $(shell date -R) "

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

faad2.o:
	@echo "faad2 started $(shell date -R) "
	(make -C faad2 2>&1 | tee $(PKGLOGDIR)/faad2.log && exit $$PIPESTATUS)
	@echo "faad2 finished $(shell date -R) "

libogg.o:
	@echo "libogg started $(shell date -R) "
	(make -C libogg 2>&1 | tee $(PKGLOGDIR)/libogg.log && exit $$PIPESTATUS)
	@echo "libogg finished $(shell date -R) "

libvorbis.o:
	@echo "libvorbis started $(shell date -R) "
	(make -C libvorbis 2>&1 | tee $(PKGLOGDIR)/libvorbis.log && exit $$PIPESTATUS)
	@echo "libvorbis finished $(shell date -R) "

soundtouch.o:
	@echo "soundtouch started $(shell date -R) "
	(make -C soundtouch 2>&1 | tee $(PKGLOGDIR)/soundtouch.log && exit $$PIPESTATUS)
	@echo "soundtouch finished $(shell date -R) "

flac.o:
	@echo "flac started $(shell date -R) "
	(make -C flac 2>&1 | tee $(PKGLOGDIR)/flac.log && exit $$PIPESTATUS)
	@echo "flac finished $(shell date -R) "

audiofile.o:
	@echo "audiofile started $(shell date -R) "
	(make -C audiofile 2>&1 | tee $(PKGLOGDIR)/audiofile.log && exit $$PIPESTATUS)
	@echo "audiofile finished $(shell date -R) "

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

taglib.o:
	@echo "taglib started $(shell date -R) "
	(make -C taglib 2>&1 | tee $(PKGLOGDIR)/taglib.log && exit $$PIPESTATUS)
	@echo "taglib finished $(shell date -R) "

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

xvidcore.o:
	@echo "xvidcore started $(shell date -R) "
	(make -C xvidcore 2>&1 | tee $(PKGLOGDIR)/xvidcore.log && exit $$PIPESTATUS)
	@echo "xvidcore finished $(shell date -R) "

opus.o:
	@echo "opus started $(shell date -R) "
	(make -C opus 2>&1 | tee $(PKGLOGDIR)/opus.log && exit $$PIPESTATUS)
	@echo "opus finished $(shell date -R) "

a52dec.o:
	@echo "a52dec started $(shell date -R) "
	(make -C a52dec 2>&1 | tee $(PKGLOGDIR)/a52dec.log && exit $$PIPESTATUS)
	@echo "a52dec finished $(shell date -R) "

libdiscid.o:
	@echo "libdiscid started $(shell date -R) "
	(make -C libdiscid 2>&1 | tee $(PKGLOGDIR)/libdiscid.log && exit $$PIPESTATUS)
	@echo "libdiscid finished $(shell date -R) "

libdvdcss.o:
	@echo "libdvdcss started $(shell date -R) "
	(make -C libdvdcss 2>&1 | tee $(PKGLOGDIR)/libdvdcss.log && exit $$PIPESTATUS)
	@echo "libdvdcss finished $(shell date -R) "

libdvdread.o:
	@echo "libdvdread started $(shell date -R) "
	(make -C libdvdread 2>&1 | tee $(PKGLOGDIR)/libdvdread.log && exit $$PIPESTATUS)
	@echo "libdvdread finished $(shell date -R) "

libdvdnav.o:
	@echo "libdvdnav started $(shell date -R) "
	(make -C libdvdnav 2>&1 | tee $(PKGLOGDIR)/libdvdnav.log && exit $$PIPESTATUS)
	@echo "libdvdnav finished $(shell date -R) "

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

libmad.o:
	@echo "libmad started $(shell date -R) "
	(make -C libmad 2>&1 | tee $(PKGLOGDIR)/libmad.log && exit $$PIPESTATUS)
	@echo "libmad finished $(shell date -R) "

libmusicbrainz.o:
	@echo "libmusicbrainz started $(shell date -R) "
	(make -C libmusicbrainz 2>&1 | tee $(PKGLOGDIR)/libmusicbrainz.log && exit $$PIPESTATUS)
	@echo "libmusicbrainz finished $(shell date -R) "

mpg123.o:
	@echo "mpg123 started $(shell date -R) "
	(make -C mpg123 2>&1 | tee $(PKGLOGDIR)/mpg123.log && exit $$PIPESTATUS)
	@echo "mpg123 finished $(shell date -R) "

#============== [ targetfs packages ] ========================================================

strip.o:
	@echo "Stripping targetfs"
	find $(SYSROOTDIR)/{,usr/}{bin,lib,sbin} -type f -exec $(CROSSTOOLS)/bin/$(TARGETARCH)-strip --strip-debug '{}' ';'

clean:
	for pkg in `ls | grep -v Makefile`; do \
		make -C $$pkg clean ;\
	done ;\
  
PHONY: all targetfs
