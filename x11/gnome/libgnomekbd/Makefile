# $OpenBSD: Makefile,v 1.49 2014/11/01 18:33:45 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		keyboard configuration library

GNOME_PROJECT=		libgnomekbd
GNOME_VERSION=		3.6.0
REVISION=		0

SHARED_LIBS +=  gnomekbd             8.0      # 8.0
SHARED_LIBS +=  gnomekbdui           8.0      # 8.0

CATEGORIES=		devel

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm xkbfile xklavier
WANTLIB += xml2 z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

LIB_DEPENDS=		x11/gnome/libxklavier \
			x11/gtk+3

.include <bsd.port.mk>
