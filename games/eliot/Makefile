# $OpenBSD: Makefile,v 1.5 2013/04/26 13:04:14 bcallah Exp $

V =		2.1
COMMENT =	scrabble game
DISTNAME =	eliot-${V}
CATEGORIES =	games
REVISION=	1

HOMEPAGE =	http://nongnu.org/eliot/

MASTER_SITES =	${MASTER_SITE_SAVANNAH:=eliot/releases/${V}/}

EXTRACT_ONLY =	${DISTNAME}${EXTRACT_SUFX}
DISTFILES +=	${DISTNAME}${EXTRACT_SUFX}
DIST_SUBDIR =	eliot
DICTS =		danosc eliot-dic-cs eliot-dic-fr lex-fise rak sowpods06 twl06
.for dict in ${DICTS}
DISTFILES+=	${dict}.dawg:0
.endfor
MASTER_SITES0 =	${MASTER_SITE_SAVANNAH:=eliot/dict/}

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/qt4 devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			 LDFLAGS="-L${X11BASE}/lib -pthread -L${LOCALBASE}/lib -liconv"
USE_GMAKE =	Yes

BUILD_DEPENDS =	devel/boost \
		devel/libexecinfo
RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	textproc/arabica devel/libconfig
WANTLIB +=	lib/qt4/QtGui lib/qt4/QtNetwork c m pthread
WANTLIB +=	arabica config++ expat ncursesw
WANTLIB +=	c++ c++abi

post-configure:
	${SUBST_CMD} ${WRKSRC}/qt/main_window.cpp

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/eliot
.for dict in ${DICTS}
	${INSTALL_DATA} ${FULLDISTDIR}/${dict}.dawg ${PREFIX}/share/eliot
.endfor

.include <bsd.port.mk>
