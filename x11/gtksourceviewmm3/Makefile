# $OpenBSD: Makefile,v 1.10 2014/10/10 12:52:53 ajacoutot Exp $

COMMENT=	C++ wrapper for gtksourceview3

GNOME_PROJECT=	gtksourceviewmm
GNOME_VERSION=	3.2.0
PKGNAME=	${GNOME_PROJECT}3-${GNOME_VERSION}
REVISION=	5

MAJOR_VERSION=	3.0
SUBST_VARS+=	MAJOR_VERSION

SHARED_LIBS +=	gtksourceviewmm-3.0    0.0      # .0.0

CATEGORIES=	x11

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atkmm-1.6
WANTLIB += cairo cairo-gobject cairomm-1.0 drm expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4
WANTLIB += glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 gtkmm-3.0 gtksourceview-3.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png pthread-stubs
WANTLIB += sigc-2.0 xcb xcb-render xcb-shm xml2 z ffi
WANTLIB += c++ c++abi pthread

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/gtksourceview3 \
		x11/gtk3mm

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
