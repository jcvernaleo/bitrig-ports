# $OpenBSD: Makefile,v 1.22 2013/03/21 08:45:16 ajacoutot Exp $

COMMENT=	getopt(3)-like library with a number of enhancements

DISTNAME=	popt-1.16
REVISION=	0
CATEGORIES=	devel
MASTER_SITES=	http://rpm5.org/files/popt/

SHARED_LIBS=	popt	1.0

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
