# $OpenBSD: Makefile,v 1.8 2013/03/21 08:45:17 ajacoutot Exp $

COMMENT=	morphing engine

DISTNAME=	animorph-0.3
CATEGORIES=	graphics
REVISION=	2

SHARED_LIBS +=  animorph             1.0      # unknown

HOMEPAGE=	http://www.dedalo-3d.com/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m
WANTLIB += c++ c++abi pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makehuman/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	perl -pi -e 's,packagedocdir=doc,packagedocdir=share/doc,g' \
		${WRKSRC}/configure
	perl -pi -e 's,doc/animorph,share/doc/animorph,g' \
		${WRKSRC}/Makefile.in

# remove useless files (ChangeLog, INSTALL...)
post-install:
	rm -rf ${PREFIX}/share/doc

.include <bsd.port.mk>
