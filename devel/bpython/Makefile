# $OpenBSD: Makefile,v 1.7 2014/10/01 19:36:34 landry Exp $

COMMENT=	fancy interface to the Python interpreter

MODPY_EGG_VERSION=0.13.1
DISTNAME=	bpython-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://bpython-interpreter.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	${HOMEPAGE}/releases/

MODULES=	lang/python

MODPY_SETUPTOOLS=Yes

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-urwid \
		textproc/py-pygments
BUILD_DEPENDS=	devel/py-babel \
		textproc/py-sphinx
TEST_DEPENDS=	devel/py-mock \
		devel/py-twisted/core \
		${RUN_DEPENDS}

.include <bsd.port.mk>
