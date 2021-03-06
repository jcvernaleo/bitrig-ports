# $OpenBSD: Makefile,v 1.13 2014/10/21 05:10:34 stu Exp $

COMMENT =	Tk Standard Library

DISTNAME =	tklib-0.6pl1
REVISION =	0
CATEGORIES =	devel x11/tk
HOMEPAGE =	http://core.tcl.tk/tklib/home

# BSD style
PERMIT_PACKAGE_CDROM =	Yes

# Fossil checkin 2014/08/11 37ef264934e385542477652833a09b6946b3c7a6
MASTER_SITES =	http://mirror.arieslabs.com/openbsd/
MODULES =	x11/tk
BUILD_DEPENDS =	devel/tcllib
RUN_DEPENDS =	devel/tcllib ${MODTK_RUN_DEPENDS}
TEST_DEPENDS =	devel/tcllib ${MODTK_BUILD_DEPENDS}
USE_GROFF =	Yes
TEST_IS_INTERACTIVE =	X11
NO_BUILD =	Yes
PKG_ARCH =	*

do-configure:
	@perl -pi -e \
	's!\$$tk_library demos!${LOCALBASE}/share/examples/tk${MODTK_VERSION}!' \
	${WRKSRC}/examples/wcb/listboxtest[12].tcl

do-install:
	${MODTCL_BIN} ${WRKSRC}/installer.tcl \
	-no-wait -no-gui -no-html \
	-pkgs -nroff -examples -apps \
	-pkg-path ${DESTDIR}${MODTCL_TCLDIR} \
	-nroff-path ${PREFIX}/man/mann \
	-example-path ${PREFIX}/share/examples/tklib \
	-mp ${DESTDIR}${MODTCL_MODDIR}/85 \
	-app-path ${PREFIX}/share/examples/tklib/apps \
	-csb ${PREFIX}/share/doc \
	-tclsh ${MODTCL_BIN} \
	-descr "`cat ${PKGDIR}/DESCR`"

# Define TEST_MODULES to restrict to a subset of regression tests.
do-test:
	${SETENV} ${ALL_TEST_ENV} ${ALL_TEST_FLAGS} \
	${MODTCL_BIN} ${WRKSRC}/sak.tcl test run -v ${TEST_MODULES}

.include <bsd.port.mk>
