# $OpenBSD: Makefile,v 1.13 2014/10/06 08:08:08 benoit Exp $

COMMENT =		classes and setuptools plugin for Mercurial repositories

MODPY_EGG_VERSION = 	6.1.1
DISTNAME =		hgtools-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		https://bitbucket.org/jaraco/hgtools/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=h/hgtools/}
EXTRACT_SUFX =		.zip

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/mercurial

NO_TEST =		Yes

pre-install:
			chmod 644 ${WRKSRC}/hgtools.egg-info/*

.include <bsd.port.mk>
