# $OpenBSD: Makefile,v 1.15 2014/06/18 01:16:42 william Exp $

COMMENT=	displays the date and resembles the toolbar

DISTNAME=	bbdate-0.2.4
REVISION=	1
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bbtools/}
HOMEPAGE=	http://bbtools.sourceforge.net/download.php?file=3

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 c m
WANTLIB+=		c++ c++abi pthread


CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
