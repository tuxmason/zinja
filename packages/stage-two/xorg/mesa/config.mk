PKGNAME := mesa
PKGVER := 18.3.2
PKGSRC := $(PKGNAME)-$(PKGVER).tar.xz
PKGSRCDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)
PKGOBJDIR := $(TCBUILDROOT)/$(PKGNAME)-$(PKGVER)-obj
PATCHLIST := $(PATCHDB)/$(PKGNAME)/list.txt
PATCHDIR := $(PATCHDB)/$(PKGNAME)
COPTS := --prefix=/usr \
	--enable-xa \
	--enable-va \
	--enable-vdpau \
	--disable-llvm \
	--enable-shared \
	--enable-glx-tls \
	--sysconfdir=/etc \
	--enable-libglvnd \
	--enable-omx-bellagio \
	--enable-shared-glapi \
	--enable-driglx-direct \
	--enable-gallium-osmesa \
	--with-platforms="drm,x11,wayland" \
	--localstatedir=/var \
	--build=$(BUILDARCH) \
	--host=$(TARGETARCH) 

ifeq ($(ARCH),$(filter $(ARCH),arm aarch64))
	COPTS := $(COPTS) \
		--disable-asm \
		--disable-mangling \
		--with-dri-drivers="nouveau,swrast" \
		--with-gallium-drivers="nouveau,swrast,vc4,freedreno,tegra"
endif

ifeq ($(ARCH),x86_64)
	COPTS := $(COPTS) \
		--with-vulkan-drivers="intel" \
		--with-dri-drivers="nouveau,swrast" \
		--with-gallium-drivers="i915,nouveau,svga,swrast"
endif

CC := "${CC}"
CXX := "${CXX}"

WAYLAND_SCANNER := "$(CROSSTOOLS)/bin/wayland-scanner"

WAYLAND_PROTOCOLS_DATADIR := $(SYSROOTDIR)/usr/share/wayland-protocols

PKGDIR := $(PKGDB)/xorg/$(PKGNAME)
ORIGSRC := $(PKGNAME)_$(PKGVER).orig.tar.xz
PKGROOT := $(DISTRIBROOT)/$(PKGNAME)
DISTRIBSRC := $(PKGROOT)/$(PKGNAME)-$(PKGVER)
PKGBINDIR := $(DISTRIBSRC)/debian/pkg
