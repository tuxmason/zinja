PKGNAME := mesa
PKGVER := 11.0.4
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--sysconfdir=/etc \
	--enable-texture-float \
	--enable-gles1 \
	--enable-gles2 \
	--enable-xa \
	--enable-glx-tls \
	--enable-osmesa \
	--enable-shared-glapi \
	--disable-mangling \
	--enable-driglx-direct \
	--with-egl-platforms="drm,x11" \
	--with-dri-drivers="i915,nouveau,r200,swrast" \
	--with-gallium-drivers="i915,nouveau,svga,swrast" \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) 

CC := "${CC} "
CXX := "${CXX} "
CFLAGS :="-O2"
CXXFLAGS :="-O2"
LDFLAGS := "$$LDFLAGS -Wl,-z,lazy"
PKGCONFIG := "$(SYSROOTDIR)/usr/lib/pkgconfig"
CPPFLAGS := "-I$(SYSROOTDIR)/usr/include/libdrm"
