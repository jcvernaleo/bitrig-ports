# $OpenBSD: Makefile,v 1.30 2014/10/08 12:06:21 ajacoutot Exp $

COMMENT =	digital camera command-line interface
CATEGORIES =	graphics

VERSION =	2.5.5
DISTNAME =	gphoto2-${VERSION}
PKGNAME =	gphoto-${VERSION}
REVISION =	0

REVISION=	1

HOMEPAGE =	http://gphoto.sourceforge.net/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gphoto/}

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c exif gphoto2 gphoto2_port jpeg ltdl m ncurses popt
WANTLIB += pthread readline

USE_GROFF =		Yes

MAKE_FLAGS =		INTLLIBS='$$(LTLIBINTL)'

CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/auto-aux
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--without-cdk
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			POPT_CFLAGS="-I${LOCALBASE}/include" \
			POPT_LIBS="-I${LOCALBASE}/lib -lpopt"

MODULES =	devel/gettext
LIB_DEPENDS =	graphics/libgphoto2 \
		devel/popt \
		devel/readline

.include <bsd.port.mk>
