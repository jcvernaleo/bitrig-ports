# $OpenBSD: Makefile,v 1.11 2014/11/06 17:13:39 sthen Exp $

COMMENT=	roundcube plugin: sieve rules (managesieve)

GH_ACCOUNT=	JohnDoh
GH_PROJECT=	Roundcube-Plugin-SieveRules-Managesieve
GH_TAGNAME=	2.1.2
GH_COMMIT=	f606c1a57f3bc4a0b1786860857605413cfc6f0c
DISTNAME=	sieverules-${GH_TAGNAME}
PKGNAME=	rcube-${DISTNAME}
REVISION=	1
CATEGORIES=	mail www
HOMEPAGE=	http://www.tehinterweb.co.uk/roundcube/\#pisieverules

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
	${INSTALL_DATA_DIR} ${INSTDIR}/sieverules
	cp -Rp ${WRKDIST}/* ${INSTDIR}/sieverules
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}
	find ${INSTDIR} \( -name \*.orig -or -name \*.src \) -exec rm -f {} \;

.include <bsd.port.mk>
