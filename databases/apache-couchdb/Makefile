# $OpenBSD: Makefile,v 1.18 2013/03/21 08:45:14 ajacoutot Exp $

COMMENT =	distributed, document-oriented database

COUCH_VER =	1.0.4
DISTNAME =	apache-couchdb-${COUCH_VER}
REVISION =	2
CATEGORIES =	databases

HOMEPAGE =	http://couchdb.apache.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/gettext

WANTLIB += c crypto curl icudata icui18n icuuc idn m mozjs ncurses
WANTLIB += nspr4 plc4 plds4 pthread ssl z
WANTLIB += c++ c++abi

MASTER_SITES =	${MASTER_SITE_APACHE:=couchdb/${COUCH_VER}/}

BUILD_DEPENDS =	lang/erlang
RUN_DEPENDS =	lang/erlang
LIB_DEPENDS =	textproc/icu4c \
		lang/spidermonkey \
		net/curl \
		devel/libidn

MAKE_FLAGS =	LDFLAGS="-L${LOCALBASE}/lib -pthread" \
		CFLAGS="-I${LOCALBASE}/include/nspr" \
		localstatelibdir="/var/couchdb" \
		default_sysconf_data=""

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
		 --with-erlang=${LOCALBASE}/lib/erlang/usr/include \
		 --with-js-include=${LOCALBASE}/include/js \
		 --with-js-lib=${LOCALBASE}/lib
# The 'erl -version' test in configure needs HOME to be set.
CONFIGURE_ENV =	HOME=${PORTHOME}

TEST_TARGET = check
PORTHOME =	${WRKDIR}

SUBST_VARS +=	COUCH_VER

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/couchdb
	${INSTALL_DATA} ${WRKBUILD}/etc/couchdb/default.ini \
	    ${PREFIX}/share/examples/couchdb
	${INSTALL_DATA} ${WRKBUILD}/etc/couchdb/local.ini \
	    ${PREFIX}/share/examples/couchdb

.include <bsd.port.mk>
