# $OpenBSD: Makefile,v 1.35 2014/06/30 07:13:58 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		framework for creating UPnP devices and control points

GNOME_PROJECT=		gupnp
GNOME_VERSION=		0.20.12
REVISION=		1

SHARED_LIBS +=  gupnp-1.0            3.2     # 4.0

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += uuid gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 m pcre soup-2.4 xml2 z ffi pthread sqlite3

MODGNOME_TOOLS += gobject-introspection vala

LIB_DEPENDS=		net/gssdp \
			sysutils/e2fsprogs

MODPY_ADJ_FILES=	tools/gupnp-binding-tool

CONFIGURE_ARGS=		--with-context-manager=unix

MODGNU_CONFIG_GUESS_DIRS= ${WRKDIST}/build-aux

CFLAGS+=	-Wno-return-type

.include <bsd.port.mk>
