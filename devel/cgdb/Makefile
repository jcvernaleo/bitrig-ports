# $OpenBSD: Makefile,v 1.5 2014/11/26 11:44:00 sthen Exp $

COMMENT=	curses GDB interface
DISTNAME=	cgdb-0.6.8
CATEGORIES=	devel
HOMEPAGE=	http://cgdb.me/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c readline m ncurses

MASTER_SITES=	http://cgdb.me/files/

BUILD_DEPENDS=	devel/help2man
LIB_DEPENDS=	devel/readline>=6.1p2

CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS+=  --with-readline=yes

CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

# there are tests, but not working yet
NO_TEST=	Yes

.include <bsd.port.mk>
