# $OpenBSD: Makefile,v 1.9 2014/10/15 10:31:21 sebastia Exp $

SHARED_ONLY =	Yes

COMMENT =	Tcl UDP extension

DISTNAME =	tcludp-1.0.11
CATEGORIES =	net
HOMEPAGE =	http://sourceforge.net/projects/tcludp/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tcludp/}
MODULES =	lang/tcl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}
MAKE_FLAGS =	DTPLITE=:
FAKE_FLAGS =	PKG_DIR=tcludp
SEPARATE_BUILD =Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		--datadir=${PREFIX}/share/examples

WRKDIST =	${WRKDIR}/tcludp
TEST_TARGET =	test

.include <bsd.port.mk>
