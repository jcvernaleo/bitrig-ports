# $OpenBSD: Makefile,v 1.33 2014/10/28 17:27:15 dcoppa Exp $

COMMENT =		minimalistic text based status bar

DISTNAME =		xmobar-0.22.1
CATEGORIES =		x11
HOMEPAGE =		http://projects.haskell.org/xmobar

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 Xext Xft Xinerama Xrandr Xss \
			c m pthread util xml2

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage nort
MODGHC_SETUP_CONF_ARGS = --flags="with_xft with_mpd with_mpris"

BUILD_DEPENDS =		devel/hs-mtl>=2.1,<2.3 \
			devel/hs-parsec>=3.1,<3.2 \
			devel/hs-regex-compat \
			devel/hs-stm>=2.3,<2.5 \
			net/hs-HTTP>=4000 \
			x11/hs-X11>=1.6.1 \
			x11/hs-X11-xft>=0.2,<0.4 \
			x11/hs-dbus>=0.10 \
			audio/hs-libmpd>=0.9

LIB_DEPENDS =		textproc/libxml

EXAMPLEDIR =		${PREFIX}/share/examples/xmobar

NO_TEST =		Yes

post-patch:
	@cp ${FILESDIR}/Batt.hs ${WRKBUILD}/src/Plugins/Monitors
	@mkdir ${WRKBUILD}/src/Plugins/Monitors/Batt
	@cp ${FILESDIR}/Binding.hsc ${WRKBUILD}/src/Plugins/Monitors/Batt
	@cp ${FILESDIR}/apm.c ${WRKBUILD}/src/Plugins/Monitors/Batt
	@cp ${FILESDIR}/apm.h ${WRKBUILD}/src/Plugins/Monitors/Batt

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/xmobar.config ${EXAMPLEDIR}/xmobarrc

.include <bsd.port.mk>
