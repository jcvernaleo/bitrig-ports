# $OpenBSD: Makefile,v 1.34 2013/08/07 15:37:09 naddy Exp $

COMMENT=	SDL C++ GUI widget library

DISTNAME=	GUIlib-1.2.1
PKGNAME=	${DISTNAME:L}

SHARED_LIBS +=	GUI                  2.0      # .0.1

CATEGORIES=	devel graphics
MASTER_SITES=	${HOMEPAGE}/src/
REVISION=	1

HOMEPAGE=	http://www.libsdl.org/projects/GUIlib/

# Public Domain
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += SDL m sndio usbhid
WANTLIB += c++ c++abi pthread

LIB_DEPENDS=	devel/sdl

MODULES=	converters/libiconv

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

MAKE_FLAGS+=	libGUI_la_LIBADD=-lsupc++

.include <bsd.port.mk>
