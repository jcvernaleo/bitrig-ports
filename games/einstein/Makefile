# $OpenBSD: Makefile,v 1.5 2013/03/11 11:07:38 espie Exp $

COMMENT =	open source remake of old DOS game Sherlock

DISTNAME =	einstein-2.0
REVISION =	2

CATEGORIES =	games

HOMEPAGE =	http://games.flowix.com/

# No license information in distfile. Homepage states that
# "you can download game for free under GPL license terms".
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c freetype m pthread z SDL>=8 SDL_mixer>=3 SDL_ttf>=7
WANTLIB +=	c++ c++abi

MASTER_SITES =	${HOMEPAGE}files/einstein/
EXTRACT_SUFX =	-src.tar.gz

LIB_DEPENDS =	devel/sdl	\
		devel/sdl-mixer	\
		devel/sdl-ttf

USE_GMAKE =	Yes
MAKE_FLAGS=	CXX=${CXX}

.include <bsd.port.mk>
