# $OpenBSD: Makefile,v 1.4 2013/03/11 11:23:58 espie Exp $

COMMENT=	output characters or lines at random intervals

DISTNAME=	randtype-1.13
REVISION=	0
CATEGORIES=	misc

HOMEPAGE=	http://bjk.sourceforge.net/randtype/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bjk/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c z

USE_GROFF =	Yes
NO_TEST=	Yes

MAKE_FLAGS =	CC="${CC}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/randtype ${PREFIX}/bin
	gunzip ${WRKSRC}/randtype.1.gz
	${INSTALL_MAN} ${WRKSRC}/randtype.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
