# $OpenBSD: Makefile,v 1.2 2013/10/24 11:48:49 kirby Exp $

COMMENT =		realtime console web log analyzer

DISTNAME =		goaccess-0.6
REVISION = 		1

CATEGORIES =		www
HOMEPAGE =		http://goaccess.prosoftcorp.com/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GeoIP c glib-2.0 m ncursesw pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=goaccess/}

LIB_DEPENDS =		devel/glib2 \
			net/GeoIP

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-geoip \
			--enable-utf8

CONFIGURE_ENV =		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	@perl -pi -e s,ncursesw/curses.h,curses.h, ${WRKSRC}/*.[ch]

.include <bsd.port.mk>
