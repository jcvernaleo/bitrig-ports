# $OpenBSD: Makefile,v 1.4 2013/03/11 13:00:47 jasper Exp $

COMMENT=	REST-based system for building web applications

VERSION=	1.9.3
DISTNAME=	webmachine-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	1
CATEGORIES=	www

HOMEPAGE=	https://github.com/basho/webmachine

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/erl-mochiweb

MODULES=	lang/erlang

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{demo,ebin,include,priv,scripts,src}
	cp -r ${WRKSRC}/demo/* ${ERL_LIBDIR}/demo/
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	cp -r ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/scripts/* ${ERL_LIBDIR}/scripts/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/
	chown -R ${SHAREOWN}:${SHAREGRP} ${ERL_LIBDIR}

.include <bsd.port.mk>
