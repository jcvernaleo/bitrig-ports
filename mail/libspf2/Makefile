# $OpenBSD: Makefile,v 1.8 2014/11/24 13:24:05 benoit Exp $

COMMENT=	SPF library

DISTNAME =	libspf2-1.2.10

SHARED_LIBS +=	spf2                 3.0      # 3.0

CATEGORIES=	mail
HOMEPAGE=	http://www.libspf2.org/

MASTER_SITES=	${HOMEPAGE}/spf/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		lib/libbind/bind c pthread
MODULES=		devel/gettext

# requires res_close() or res_ninit()
LIB_DEPENDS=		net/libbind

CONFIGURE_STYLE=	gnu

MODGNU_CONFIG_GUESS_DIRS=	${WRKDIST}/config

CONFIGURE_ARGS=		--bindir=${PREFIX}/libexec/libspf2
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/bind" \
			LDFLAGS="-L${LOCALBASE}/lib -L${LOCALBASE}/lib/libbind -Wl,-rpath ${LOCALBASE}/lib/libbind -lbind"

# broken test cases
NO_TEST=		yes

.include <bsd.port.mk>
