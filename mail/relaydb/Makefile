# $OpenBSD: Makefile,v 1.12 2013/03/11 11:23:53 espie Exp $

COMMENT=	spam relay database

DISTNAME=	relaydb-1.7
REVISION=	1
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/relaydb.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MAKE_FLAGS=	CFLAGS="${CFLAGS} -Wno-unused-const-variable"

USE_GROFF =	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/relaydb ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/relaydb.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
