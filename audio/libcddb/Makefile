# $OpenBSD: Makefile,v 1.4 2013/03/21 08:45:12 ajacoutot Exp $

COMMENT=		library to access data on a CDDB server

DISTNAME=		libcddb-1.3.2
REVISION=		0
CATEGORIES=		audio devel
SHARED_LIBS +=	cddb                 0.1      # .4.3

HOMEPAGE=		http://libcddb.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libcddb/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		converters/libiconv

WANTLIB=		c


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-cdio
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
