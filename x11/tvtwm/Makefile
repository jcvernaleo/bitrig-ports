# $OpenBSD: Makefile,v 1.25 2013/03/11 11:46:16 espie Exp $

COMMENT=	twm with a virtual desktop

DISTNAME=	tvtwm.pl11
PKGNAME=	tvtwm-0pl11
REVISION=	1
CATEGORIES=	x11

# BSD-like/badly worded
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xext Xmu Xpm Xt c Xau Xdmcp

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=window_managers/}

WRKDIST=	${WRKDIR}/tvtwm

USE_GROFF =	Yes

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tvtwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tvtwm.man ${PREFIX}/man/man1/tvtwm.1

.include <bsd.port.mk>
