# $OpenBSD: Makefile,v 1.50 2014/11/05 10:30:25 landry Exp $

COMMENT=	Xfce4 temperature/weather conditions panel plugin

XFCE_VERSION=	0.8.4
XFCE_PLUGIN=	weather

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	textproc/libxml \
		devel/libsoup \
		sysutils/upower

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 cairo expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-util xcb-render xcb-shm
WANTLIB += harfbuzz pthread graphite2 soup-2.4 sqlite3 upower-glib
WANTLIB += c++ c++abi

.include <bsd.port.mk>
