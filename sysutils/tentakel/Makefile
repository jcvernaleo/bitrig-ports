# $OpenBSD: Makefile,v 1.16 2013/03/11 11:41:33 espie Exp $

COMMENT=	distributed command execution

DISTNAME=	tentakel-357
REVISION =	5
CATEGORIES=	sysutils
HOMEPAGE=	http://tentakel.biskalar.de/

MODPY_EGG_VERSION = 2.2.1

# BSD + LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://spacehopper.org/mirrors/

MODULES=	lang/python

WRKSRC=		${WRKDIST}/py

USE_GROFF =	Yes
TEST_IS_INTERACTIVE=	yes

do-configure:
	@perl -pi -e 's,/etc,${SYSCONFDIR},g' \
		${WRKDIST}/tentakel.1 \
		${WRKDIST}/py/tentakel

do-test:
	@cd ${WRKSRC}/lekatnet && ${MODPY_BIN} ./config.py
	@cd ${WRKSRC}/lekatnet && ${MODPY_BIN} ./remote.py


.include <bsd.port.mk>
