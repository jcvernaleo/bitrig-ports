# $OpenBSD: Makefile,v 1.3 2014/11/07 10:40:05 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		physics library

V =			2.81
DISTNAME =		bullet-${V}-rev2613
PKGNAME =		bullet-${V}

SHARED_LIBS +=  BulletCollision           0.0 # 2.79
SHARED_LIBS +=  BulletDynamics            0.0 # 2.79
SHARED_LIBS +=  BulletSoftBody            0.0 # 2.79
SHARED_LIBS +=  LinearMath                0.0 # 2.79

CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		http://bulletphysics.org

# zlib
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://bullet.googlecode.com/files/
EXTRACT_SUFX =		.tgz

WANTLIB += m
WANTLIB += c++ c++abi pthread

MODULES =		devel/cmake
BUILD_DEPENDS =		graphics/freeglut

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DBUILD_DEMOS=OFF \
			-DBUILD_EXTRAS=OFF \
			-DINSTALL_LIBS=ON

NO_TEST =		Yes

CFLAGS +=		-I${X11BASE}/include

post-extract:
	perl -pi -e 's/\015//g' \
	${WRKSRC}/src/BulletMultiThreaded/GpuSoftBodySolvers/OpenCL/OpenCLC10/*

.include <bsd.port.mk>
