# $OpenBSD: Makefile,v 1.3 2014/10/22 13:56:33 okan Exp $

COMMENT=	system monitoring daemon

DISTNAME=	monitord-1.93
REVISION=	0
CATEGORIES=	sysutils
REVISION=	0

HOMEPAGE=	http://www.estpak.ee/~risto/monitord/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/monitord ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/monitord
	${INSTALL_DATA} ${WRKSRC}/monitord.conf \
		${PREFIX}/share/examples/monitord

.include <bsd.port.mk>
