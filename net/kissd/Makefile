# $OpenBSD: Makefile,v 1.6 2013/03/11 11:35:48 espie Exp $

COMMENT=	server for KiSS DP-500 network movie player

DISTNAME=	kissd-0.3
REVISION=	0
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/kissd.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MAKE_FLAGS=		CFLAGS="${CFLAGS} -Wno-unused-const-variable"

USE_GROFF =	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/kissd ${PREFIX}/bin/kissd
	${INSTALL_MAN} ${WRKSRC}/kissd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
