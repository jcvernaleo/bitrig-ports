# $OpenBSD: Makefile,v 1.3 2013/03/11 11:23:57 espie Exp $

COMMENT =		powerful curses interface python file manager

MODPY_EGG_VERSION =	2.3
DISTNAME =		lfm-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES =		misc

HOMEPAGE =		http://katxi.org/devel/lfm/

# GPLv3+
PERMIT_PACKAGE_CDROM =	 Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=l/lfm/}

MODULES =		lang/python

NO_TEST =		Yes
USE_GROFF =		Yes

post-install:
		${INSTALL_MAN} ${WRKSRC}/lfm.1 ${PREFIX}/man/man1
		${INSTALL_MAN} ${WRKSRC}/pyview.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
