# $OpenBSD: Makefile,v 1.25 2014/06/18 01:16:56 william Exp $

COMMENT=	X keygrabber for blackbox

DISTNAME=	bbkeys-0.9.0
REVISION=	5
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bbkeys/}

HOMEPAGE=	http://bbkeys.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c freetype expat fontconfig ICE m SM X11 Xau \
		Xdmcp Xext Xft Xrender z pthread-stubs xcb
WANTLIB+=	c++ c++abi pthread

MODULES=	converters/libiconv

USE_GROFF =	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/blackbox

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
