# $OpenBSD: Makefile,v 1.8 2014/11/06 17:13:39 sthen Exp $

COMMENT=	roundcube plugin: context-sensitive menus

GH_ACCOUNT=	JohnDoh
GH_PROJECT=	Roundcube-Plugin-Context-Menu
GH_TAGNAME=	2.0
GH_COMMIT=	9c8d29f29bfd0f25325d9c631baca8caa1fbabcd
DISTNAME=	contextmenu-${GH_TAGNAME}
PKGNAME=	rcube-${DISTNAME}
REVISION=	0
CATEGORIES=	mail www
HOMEPAGE=	http://www.tehinterweb.co.uk/roundcube/\#picontextmenu
REVISION=	0

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/roundcubemail/plugins
TINSTDIR=	${TRUEPREFIX}/roundcubemail/plugins
SUBST_VARS=	INSTDIR TINSTDIR

MODULES=	lang/php
RUN_DEPENDS=	mail/roundcubemail>=0.9

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/contextmenu
	cp -Rp ${WRKDIST}/* ${INSTDIR}/contextmenu
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} \;

.include <bsd.port.mk>
