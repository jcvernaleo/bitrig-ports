# $OpenBSD: Makefile,v 1.16 2013/03/19 13:07:14 nigel Exp $

COMMENT=		automatically create timetables

DISTNAME=		fet-5.14.1
REVISION=		4
CATEGORIES=		productivity x11

HOMEPAGE=		http://www.lalescu.ro/liviu/fet/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += Qt3Support QtGui QtNetwork QtSql QtXml c m pthread
WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB += c++ c++abi

MASTER_SITES=		${HOMEPAGE}/download/ \
			http://timetabling.de/download/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			x11/qt4

LIB_DEPENDS=		x11/qt4

USE_GROFF =		Yes

PORTHOME=		${WRKDIR}

NO_TEST=		Yes

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake4 fet.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fet ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fet
	${INSTALL_DATA} ${WRKSRC}/doc/algorithm/* \
		${PREFIX}/share/doc/fet 
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fet
	cd ${WRKSRC}/examples/ && umask 022 && pax -rw . \
		${PREFIX}/share/examples/fet
	${INSTALL_MAN} ${WRKSRC}/doc/fet.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
