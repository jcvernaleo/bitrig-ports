# $OpenBSD: Makefile,v 1.7 2013/11/09 18:22:02 zhuk Exp $

COMMENT =	tool for exploring the color space and relations

DISTNAME =	ColorExplorer-1.8
REVISION =	3
CATEGORIES =	graphics
HOMEPAGE =	http://billposer.org/Software/ColorExplorer.html

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://billposer.org/Software/Downloads/
MODULES =	x11/tk
RUN_DEPENDS =	${MODTK_RUN_DEPENDS} \
		graphics/xoris

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

do-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/ColorExplorer.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ColorExplorer.tcl ${PREFIX}/bin/ColorExplorer

.include <bsd.port.mk>
