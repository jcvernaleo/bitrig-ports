# $OpenBSD: Makefile,v 1.12 2013/11/10 22:23:43 sthen Exp $

COMMENT =	Qt4 port of the Scintilla source code editor

# XXX update py-qscintilla alongside this port (same distfile).
VERSION =	2.8
DISTNAME =	QScintilla-gpl-${VERSION}
PKGNAME =	qscintilla-${VERSION}
CATEGORIES =	editors x11
REVISION =	1

SHARED_LIBS =	qscintilla2 4.0

HOMEPAGE =	http://www.riverbankcomputing.com/software/qscintilla/

# GPLv2/GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender fontconfig
WANTLIB += freetype m pthread
WANTLIB += c++ c++abi

MASTER_SITES =  ${MASTER_SITE_SOURCEFORGE:=pyqt/}

MODULES = devel/gettext x11/qt4

CONFIGURE_ENV =	HOME=${WRKDIR}
MAKE_FLAGS =	QMAKE_CXX=${CXX} QMAKE_CXXFLAGS_RELEASE="${CXXFLAGS}" \
		HOME=${WRKDIR} INSTALL_ROOT=${DESTDIR} \
		LIBqscintilla2_VERSION=${LIBqscintilla2_VERSION}

WRKSRC =	${WRKDIST}/Qt4Qt5

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/qscintilla.pro

do-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/qmake4 \
		${MAKE_FLAGS} qscintilla.pro

.include <bsd.port.mk>
