# $OpenBSD: Makefile,v 1.25 2014/10/23 07:21:06 jasper Exp $

COMMENT=	aewm++ based pretty themable window manager

DISTNAME=	pekwm-0.1.15
REVISION=	1
CATEGORIES=	x11

HOMEPAGE=	http://pekwm.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xpm Xrandr c jpeg m png
WANTLIB += z
WANTLIB += c++ c++abi pthread

MODULES=	converters/libiconv

MASTER_SITES=	${HOMEPAGE}projects/pekwm/files/
EXTRACT_SUFX=	.tar.bz2
LIB_DEPENDS=	graphics/jpeg \
		graphics/png

USE_GROFF =	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-xinerama

post-install:
	@mv ${WRKINST}/etc/pekwm ${PREFIX}/share/examples

.include <bsd.port.mk>
