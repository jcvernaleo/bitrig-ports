# $OpenBSD: Makefile,v 1.24 2014/09/03 11:11:27 jasper Exp $

COMMENT =	access web services that claim to be RESTful

GNOME_VERSION =	0.7.92
GNOME_PROJECT =	rest
PKGNAME =	lib${DISTNAME}
REVISION =	0

CATEGORIES =	net devel

SHARED_LIBS +=	rest-0.7  	0.2
SHARED_LIBS +=	rest-extras-0.7 0.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre pthread soup-2.4 soup-gnome-2.4 sqlite3 xml2
WANTLIB += z

MODULES =		devel/gettext \
			x11/gnome
MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS =		devel/libsoup

CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/build
CONFIGURE_ARGS =	--with-gnome \
			--with-ca-certificates=/etc/ssl/cert.pem

PORTHOME=		${WRKDIST}

.include <bsd.port.mk>
