# $OpenBSD: Makefile,v 1.19 2013/03/11 11:42:45 espie Exp $

COMMENT=	paragraph reflow for email

VERSION=	1.52
DISTNAME=	Par${VERSION:S/.//}
PKGNAME=	par-${VERSION}
REVISION =	1
CATEGORIES=	textproc

HOMEPAGE=	http://www.nicemice.net/par/

# custom
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c 

MASTER_SITES=   ${HOMEPAGE}

ALL_TARGET=
USE_GROFF =	Yes

NO_TEST=	Yes

do-configure:
	cd ${WRKSRC}; cp protoMakefile Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/par ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/par.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
