# $OpenBSD: Makefile,v 1.16 2013/03/21 08:45:18 ajacoutot Exp $

COMMENT=	GTK2 interface to libexif

DISTNAME=	libexif-gtk-0.3.5
REVISION=	12
SHARED_LIBS +=	exif-gtk 0.0	# .5.0
CATEGORIES=	graphics

HOMEPAGE=	http://libexif.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libexif/}

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 cairo expat fontconfig freetype pcre \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 z png Xcomposite \
		Xdamage pthread-stubs xcb gdk_pixbuf-2.0 \
		gdk-x11-2.0>=1000 gtk-x11-2.0>=1000 exif>=12 \
		GL Xxf86vm drm ffi gthread-2.0 xcb-render xcb-shm
WANTLIB +=	c++ c++abi pthread

MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2 \
		graphics/libexif


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
