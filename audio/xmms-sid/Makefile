# $OpenBSD: Makefile,v 1.21 2013/03/21 08:45:13 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	XMMS input plugin for playing SID files

DISTNAME=	xmms-sid-0.7.4
REVISION=	9
CATEGORIES=	audio
HOMEPAGE=	http://www.tnsp.org/xmms-sid.php

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xi gdk glib gmodule gtk \
			m xcb sidplay>=1
WANTLIB +=		c++ c++abi

MASTER_SITES=	http://www.tnsp.org/xs-files/

LIB_DEPENDS=	audio/libsidplay
RUN_DEPENDS=	audio/xmms
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES +=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sidplay-prefix=${LOCALBASE}
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
