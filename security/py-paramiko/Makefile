# $OpenBSD: Makefile,v 1.37 2014/10/15 17:15:37 rpe Exp $

COMMENT = 	Python module that implements the SSH2 protocol

MODPY_EGG_VERSION = 	1.15.1
DISTNAME = 		paramiko-${MODPY_EGG_VERSION}
PKGNAME = 		py-${DISTNAME}
REVISION = 		0
CATEGORIES = 		security

HOMEPAGE = 		https://github.com/paramiko/paramiko/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES = 		${MASTER_SITE_PYPI:=p/paramiko/}

MODULES = 		lang/python

MODPY_SETUPTOOLS = 	Yes

RUN_DEPENDS = 		security/py-crypto \
			security/py-ecdsa
TEST_DEPENDS =		${RUN_DEPENDS}

pre-build:
	@perl -pi -e "s,^\#\!/usr/bin/env python,#!${MODPY_BIN}," \
	  ${WRKSRC}/demos/*.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-paramiko
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-paramiko
	cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-paramiko
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/py-paramiko
	${INSTALL_DATA} ${WRKSRC}/demos/* \
	  ${PREFIX}/share/examples/py-paramiko

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test.py --verbose

.include <bsd.port.mk>
