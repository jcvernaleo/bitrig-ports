# $OpenBSD: Makefile,v 1.17 2013/05/17 09:12:26 kirby Exp $

COMMENT=	Library for direct-connect protocol

DISTNAME=	dclib-0.3.7
REVISION=	7
CATEGORIES=	net
SHARED_LIBS=	dc	1.0

HOMEPAGE=	http://wxdcgui.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto m ssl z bz2 xml2
WANTLIB += c++ c++abi pthread

MASTER_SITES=	http://spacehopper.org/mirrors/berlios/dcgui/

MODULES=	converters/libiconv
LIB_DEPENDS=	archivers/bzip2 \
		textproc/libxml

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
