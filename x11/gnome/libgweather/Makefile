# $OpenBSD: Makefile,v 1.67 2014/10/15 09:52:25 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		weather information access library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		3.14.1

SHARED_LIBS +=		gweather-3             2.2      # 7.3

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 geocode-glib gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 sqlite3
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection vala
LIB_DEPENDS=		geo/geocode-glib \
			x11/gtk+3

CONFIGURE_ARGS=		--with-zoneinfo-dir="/usr/share/zoneinfo" \
			--disable-glade-catalog

.include <bsd.port.mk>
