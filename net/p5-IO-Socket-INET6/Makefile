# $OpenBSD: Makefile,v 1.15 2014/02/04 02:47:51 bluhm Exp $

COMMENT =		object interface for AF_INET and AF_INET6 domain sockets

DISTNAME =		IO-Socket-INET6-2.72
REVISION =		0

CATEGORIES =		net

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/p5-Socket6>=0.12
TEST_DEPENDS =		devel/p5-Test-Pod-Coverage devel/p5-Test-Pod

.include <bsd.port.mk>
