# $OpenBSD: Makefile,v 1.12 2014/11/06 17:13:41 sthen Exp $

COMMENT=		rss reader, live stream, mashup, aggregation webapp

DISTNAME=		selfoss-2.12
CATEGORIES=		www
REVISION=		0

HOMEPAGE=		http://selfoss.aditu.de/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.zip

MODULES=		lang/php

RUN_DEPENDS=		lang/php/${MODPHP_VERSION},-gd

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=			${VARBASE}/www
INSTDIR=		${PREFIX}/selfoss
TINSTDIR=		${TRUEPREFIX}/selfoss
SUBST_VARS=		INSTDIR MODPHP_VERSION TINSTDIR

do-extract:
	mkdir -p ${WRKDIST}
	unzip -oq -d ${WRKDIST} ${FULLDISTDIR}/${EXTRACT_ONLY}
	find ${WRKDIST} -type f | \
		egrep '\.(css|htaccess|ini|js|md|php|phtml|txt)' | \
		xargs perl -i -pe 's/\r$$//'

do-install:
	perl -i -pe 's,^#(RewriteBase /selfoss.*),\1,' ${WRKDIST}/.htaccess
	cp -Rp ${WRKDIST} ${INSTDIR}
	${SUBST_CMD} -c ${FILESDIR}/selfoss.conf ${INSTDIR}/selfoss.conf.dist
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
