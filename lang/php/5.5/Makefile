# $OpenBSD: Makefile,v 1.30 2014/12/02 09:41:07 brad Exp $

BROKEN-hppa =	no __sync_bool_compare_and_swap support nor asm fallback

# XXX use the bundled libtool because it needs some specific options we
# don't have.
USE_LIBTOOL=	No

PV=		5.5
V=		${PV}.19

REVISION=	1

INI_TEMPLATES=	development production

CONFIGURE_ARGS+=	--enable-mysqlnd

WANTLIB-main+=		c++ c++abi pthread ncurses readline

# sybase-ct
MULTI_PACKAGES+=	-sybase_ct
COMMENT-sybase_ct=	sybase database access extensions for php5
CONFIGURE_ARGS+=	--with-sybase-ct=shared,${LOCALBASE}
LIB_DEPENDS-sybase_ct=	databases/freetds
WANTLIB-sybase_ct=	ct pthread

.include <bsd.port.mk>
