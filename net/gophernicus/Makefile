# $OpenBSD: Makefile,v 1.9 2014/12/03 03:10:10 bcallah Exp $

COMMENT=	modern gopher server
DISTNAME=	gophernicus-1.6
CATEGORIES=	net

HOMEPAGE=	http://gophernicus.org

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}/software/gophernicus/

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/in.gophernicus ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gophernicus
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gophernicus
	cd ${WRKSRC} && ${INSTALL_DATA} LICENSE README INSTALL \
	    TODO ChangeLog README.Gophermap gophertag \
	    ${PREFIX}/share/doc/gophernicus/
	cd ${WRKSRC} && ${INSTALL_DATA} gophermap \
	    ${PREFIX}/share/examples/gophernicus/

.include <bsd.port.mk>
