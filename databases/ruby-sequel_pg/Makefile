# $OpenBSD: Makefile,v 1.29 2014/11/26 17:45:06 jeremy Exp $

COMMENT =	faster SELECTs when using ruby-sequel with ruby-pg

DISTNAME =	sequel_pg-1.6.11
CATEGORIES =	databases

HOMEPAGE =	https://github.com/jeremyevans/sequel_pg

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	pq>=2

MODULES =	lang/ruby

LIB_DEPENDS =	databases/postgresql
RUN_DEPENDS =	databases/ruby-sequel,${MODRUBY_FLAVOR}>=3.39.0 \
		databases/ruby-pg,${MODRUBY_FLAVOR}>=0.8.0
BUILD_DEPENDS =	${RUN_DEPENDS}

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
