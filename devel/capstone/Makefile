# $OpenBSD: Makefile,v 1.4 2014/11/19 21:59:31 benoit Exp $

COMMENT =	multi-platform, multi-architecture disassembly framework

VERSION =	3.0
DISTNAME =	capstone-${VERSION}
CATEGORIES =	devel
HOMEPAGE =	http://www.capstone-engine.org/

SHARED_LIBS =	capstone	2.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES = 		http://capstone-engine.org/download/${VERSION}/

USE_GMAKE =		Yes
FAKE_FLAGS =		PREFIX=${PREFIX}
MAKE_ENV =		LIBcapstone_VERSION=${LIBcapstone_VERSION} \
			INSTALL_DATA="${INSTALL_DATA}" \
			INSTALL_LIBRARY="${INSTALL_DATA}"

do-test:
	cd ${WRKBUILD}/tests; \
	set -- $$(env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_TEST_FLAGS} \
	    -f ${MAKE_FILE} -p -n | grep ^SOURCES); \
	echo "$$@"; \
	shift 2; for t; do \
		t=$${t%.c}; LD_LIBRARY_PATH=`pwd` \
		LD_PRELOAD=libcapstone.so.${LIBcapstone_VERSION} ./$$t; \
	done

.include <bsd.port.mk>
