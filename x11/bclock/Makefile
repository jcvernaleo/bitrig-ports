# $OpenBSD: Makefile,v 1.24 2014/12/05 12:50:09 naddy Exp $

COMMENT=	round, analog X11 clock with bezier curve hands

DISTNAME=	bclock-1.0
REVISION=	4
CATEGORIES=	x11

MASTER_SITES=	${MASTER_SITE_SUNSITE:=X11/clocks/}

# X11
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xt c m

CONFIGURE_STYLE=	imake

NO_TEST=	Yes

.include <bsd.port.mk>
