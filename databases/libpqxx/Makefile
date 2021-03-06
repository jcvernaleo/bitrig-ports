# $OpenBSD: Makefile,v 1.18 2014/10/02 10:16:34 zhuk Exp $

COMMENT=	C++ client API for PostgreSQL

DISTNAME=	libpqxx-4.0.1
REVISION=	0
CATEGORIES=	databases devel

SHARED_LIBS =	pqxx                 2.0      # .0.0

HOMEPAGE=	http://pqxx.org/development/libpqxx/

# 3-clause BSDL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto m pq ssl
WANTLIB += c++ c++abi pthread

MASTER_SITES=	http://pqxx.org/download/software/libpqxx/

LIB_DEPENDS=	databases/postgresql

MODULES=	lang/python
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=tools/splitconfig \
		tools/template2mak.py

# "Yes" breaks tests
SEPARATE_BUILD=	No

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/config

# Regression tests start up and use a real database
TEST_DEPENDS =		databases/postgresql,-server
PGDATA =		${WRKDIR}/testdb
PGDATABASE =		pqxx-test
TEST_ENV =		PGDATABASE=${PGDATABASE} \
			PGHOST=${WRKDIR}

# Make sure that server is always stopped after starting
do-test:
	rm -Rf ${PGDATA}
	${LOCALBASE}/bin/initdb -D ${PGDATA} -A trust --locale=C
	${LOCALBASE}/bin/pg_ctl start -w -D ${PGDATA} -l ${WRKDIR}/pg.log \
		-o "-F -h '' -k ${WRKDIR}"
	${TEST_ENV} ${LOCALBASE}/bin/createdb ${PGDATABASE} || \
	    (${LOCALBASE}/bin/pg_ctl stop -D ${PGDATA} -m i; exit 1)
	cd ${WRKBUILD}; \
	    set +e; \
	    ${SETENV} ${ALL_TEST_ENV} ${MAKE_PROGRAM} ${ALL_TEST_FLAGS} \
	        -f ${MAKE_FILE} ${TEST_TARGET}; \
	    Q=$$?; \
	    ${LOCALBASE}/bin/pg_ctl stop -D ${PGDATA} -m i; \
	    exit $$Q

.include <bsd.port.mk>
