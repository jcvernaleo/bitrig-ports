# $OpenBSD: Makefile,v 1.8 2013/03/11 11:23:52 espie Exp $

COMMENT=	fast and simple mbox folder reader

MODULES=	cpan
DISTNAME=	Mail-Mbox-MessageParser-1.5002
REVISION=	1
CATEGORIES=	mail
USE_GROFF =	Yes

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	devel/p5-Benchmark-Timer \
		devel/p5-FileHandle-Unget
RUN_DEPENDS=	devel/p5-FileHandle-Unget \
		archivers/bzip2

TEST_DEPENDS=textproc/p5-Text-Diff

CONFIGURE_ARGS=	BZIP2=${LOCALBASE}/bin/bzip2

.include <bsd.port.mk>
