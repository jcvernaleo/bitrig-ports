# $OpenBSD: Makefile,v 1.31 2013/03/11 11:07:42 espie Exp $

COMMENT =	space-based shoot'em up game for X11

DISTNAME =	xsoldier-1.8
REVISION =	0
CATEGORIES =	games x11

HOMEPAGE =	http://www.interq.or.jp/libra/oohara/xsoldier/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		ICE SM X11 Xpm c

MASTER_SITES =		${HOMEPAGE}

CONFIGURE_STYLE =	gnu

MAKE_FLAGS =		CC_OPTIMIZE="${CFLAGS}"

NO_TEST =		Yes

# template for pkg install
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xsoldier
	${INSTALL_DATA} ${WRKSRC}/scorefile.txt \
		 ${PREFIX}/share/examples/xsoldier/xsoldier.scores

.include <bsd.port.mk>
