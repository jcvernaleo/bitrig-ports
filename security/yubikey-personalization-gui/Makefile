# $OpenBSD: Makefile,v 1.10 2014/11/28 14:34:27 sthen Exp $

COMMENT=	Qt GUI to configure YubiKeys

DISTNAME=	yubikey-personalization-gui-3.1.18

CATEGORIES=	security x11

HOMEPAGE=	http://yubico.github.io/yubikey-personalization-gui/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB += freetype m pthread ykpers-1 yubikey
WANTLIB += c++ c++abi

MASTER_SITES=	http://yubico.github.io/yubikey-personalization-gui/releases/

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/libyubikey>=1.8.0 \
		sysutils/ykpers>=1.14.0

MODULES=	x11/qt4
USE_GMAKE=	Yes
NO_TEST=	Yes

do-configure:
	cd ${WRKSRC}; CXXFLAGS="${CXXFLAGS}" qmake4

R = ${WRKSRC}/resources/lin/yubikey-personalization-gui

do-install:
	${INSTALL_PROGRAM} \
	    ${WRKSRC}/build/release/yubikey-personalization-gui ${PREFIX}/bin
	cd ${PREFIX}/share && ${INSTALL_DATA_DIR} applications pixmaps
	${INSTALL_DATA} $R.1 ${PREFIX}/man/man1
	${INSTALL_DATA} $R.desktop ${PREFIX}/share/applications
	${INSTALL_DATA} $R.png ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
