# $OpenBSD: Makefile,v 1.37 2013/09/25 19:24:34 ajacoutot Exp $

COMMENT=	utilities for dot.desktop entries

DISTNAME=	desktop-file-utils-0.22
REVISION=	0
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/desktop-file-utils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c glib-2.0

MASTER_SITES=	http://freedesktop.org/software/desktop-file-utils/releases/

MODULES=	devel/gettext

LIB_DEPENDS=	devel/glib2

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_prog_EMACS=no

.include <bsd.port.mk>
