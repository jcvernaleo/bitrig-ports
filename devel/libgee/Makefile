# $OpenBSD: Makefile,v 1.46 2014/10/14 16:28:12 ajacoutot Exp $

COMMENT=	GObject based collection library

GNOME_PROJECT=	libgee
GNOME_VERSION=	0.16.1

SHARED_LIBS +=  gee-0.8              3.1      # 7.0

CATEGORIES=	devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre pthread
WANTLIB += z

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	gobject-introspection vala

LIB_DEPENDS=	devel/glib2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
