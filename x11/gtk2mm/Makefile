# $OpenBSD: Makefile,v 1.61 2014/10/11 08:39:34 ajacoutot Exp $

PORTROACH=	limit:^2

COMMENT=	C++ interface for gtk2+

GNOME_PROJECT=	gtkmm
GNOME_VERSION=	2.24.4
REVISION=	2

PKGNAME=	gtk2mm-${GNOME_VERSION}

CATEGORIES=	devel x11

SHARED_LIBS +=  gdkmm-2.4            11.0     # 2.0
SHARED_LIBS +=  gtkmm-2.4            11.0     # 2.0

HOMEPAGE=	http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atkmm-1.6 cairo cairomm-1.0
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre pixman-1
WANTLIB += png pthread pthread-stubs sigc-2.0 xcb xcb-render
WANTLIB += xcb-shm z
WANTLIB += c++ c++abi

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/atk2mm \
		devel/pangomm \
		x11/gtk+2

SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static \
		--disable-dependency-tracking
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build

.include <bsd.port.mk>
