# $OpenBSD: Makefile,v 1.114 2014/12/18 08:32:44 pirofti Exp $

COMMENT =	CLI program to download videos from YouTube and other sites

MODPY_EGG_VERSION = 2014.12.17.2

DISTNAME =	youtube-dl-${MODPY_EGG_VERSION}
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	http://rg3.github.io/youtube-dl/

# Public Domain
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://yt-dl.org/downloads/${MODPY_EGG_VERSION}/

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

NO_TEST =	Yes

PKG_ARCH =	*

WRKDIST =	${WRKDIR}/youtube-dl

.include <bsd.port.mk>
