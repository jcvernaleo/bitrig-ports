# $OpenBSD: Makefile,v 1.16 2014/12/11 10:56:19 zhuk Exp $

SHARED_ONLY=	Yes

COMMENT=	PolicyKit authentication agent for for Qt4

V=		0.112.0
DISTNAME=	polkit-qt-1-${V}
PKGNAME=	polkit-qt4-${V}
REVISION=	0

SHARED_LIBS +=  polkit-qt-agent-1         2.0 # 0.99
SHARED_LIBS +=  polkit-qt-core-1          2.0 # 0.99
SHARED_LIBS +=  polkit-qt-gui-1           2.0 # 0.99

CATEGORIES=	x11 sysutils

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://techbase.kde.org/Polkit-Qt-1

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += QtDBus QtGui gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m polkit-agent-1 polkit-gobject-1
WANTLIB += c++ c++abi pthread

MASTER_SITES=	${MASTER_SITE_KDE:=stable/apps/KDE4.x/admin/}

MODULES=	devel/cmake \
		x11/qt4

BUILD_DEPENDS=	devel/automoc

LIB_DEPENDS=	sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

CONFIGURE_ARGS=	-DCMAKE_REQUIRED_FLAGS:STRING="-L${LOCALBASE}/lib" \
		-DCMAKE_INCLUDE_PATH:STRING="${LOCALBASE}/include" \
		-DCMAKE_EXE_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib" \
		-DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib" \
		-DUSE_QT4=Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/PolkitQt-1Config.cmake.in

.include <bsd.port.mk>
