# $OpenBSD: Makefile,v 1.17 2013/03/11 11:07:41 espie Exp $

COMMENT=	breakout game for the X Window System

DISTNAME=	xbreaky-0.0.5
REVISION =	3
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://xbreaky.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		X11 Xpm c m pthread-stubs sndio xcb
WANTLIB+=		c++ c++abi

USE_GROFF =	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
