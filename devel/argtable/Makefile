# $OpenBSD: Makefile,v 1.13 2013/03/21 08:45:14 ajacoutot Exp $

COMMENT=		ANSI C command line parser

DISTNAME=		argtable2-13
PKGNAME=		argtable-2.13
REVISION=		0
SHARED_LIBS +=	argtable2            1.2      # .1.8
CATEGORIES=		devel

HOMEPAGE=		http://argtable.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=argtable/}

USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
FAKE_FLAGS=		exampledir=${PREFIX}/share/examples/argtable2

.include <bsd.port.mk>
