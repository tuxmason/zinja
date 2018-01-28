PKGNAME := mesa
PKGVER := 17.3.3
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--enable-xa \
	--enable-gbm \
	--disable-asm \
	--enable-dri \
	--enable-egl \
	--enable-glx \
	--enable-gles1 \
	--enable-gles2 \
	--disable-llvm \
	--enable-osmesa \
	--enable-glx-tls \
	--enable-libglvnd \
	--sysconfdir=/etc \
	--disable-mangling \
	--enable-omx-bellagio \
	--enable-shared-glapi \
	--enable-driglx-direct \
	--enable-texture-float \
	--enable-gallium-extra-hud \
	--with-platforms="drm,x11,wayland" \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) 

ifeq ($(ARCH),arm)
	COPTS := $(COPTS) \
		--with-dri-drivers="nouveau,swrast" \
		--with-gallium-drivers="nouveau,swrast,vc4"
endif

ifeq ($(ARCH),x86_64)
	COPTS := $(COPTS) \
		--with-dri-drivers="nouveau,swrast" \
		--with-gallium-drivers="i915,r600,nouveau,radeonsi,svga,swrast"
endif

CC := "${CC} "
CXX := "${CXX} "
CPPFLAGS := "-I$(SYSROOTDIR)/usr/include/libdrm -I$(SYSROOTDIR)/usr/include/libdrm/nouveau"
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig:$(SYSROOTDIR)/usr/share/pkgconfig"
WAYLAND_SCANNER := "$(CROSSTOOLS)/bin/wayland-scanner"
PKG_CONFIG_SYSROOT_DIR := $(SYSROOTDIR)
WAYLAND_PROTOCOLS_DATADIR := "$(SYSROOTDIR)/usr/share/wayland-protocols"
LIBS := "-latomic"
LDFLAGS := "-L$(SYSROOTDIR)/lib -L$(SYSROOTDIR)/usr/lib"
