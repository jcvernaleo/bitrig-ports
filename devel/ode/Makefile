# $OpenBSD: Makefile,v 1.8 2013/03/21 08:45:16 ajacoutot Exp $

COMMENT =	high performance library for simulating rigid body dynamics
SHARED_LIBS += 	ode	1.0	# 3.0
DISTNAME = 	ode-0.12
CATEGORIES =	devel
REVISION=	1

HOMEPAGE =	http://www.ode.org/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=opende/}

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU X11 Xdamage Xext Xfixes Xxf86vm c drm m 
WANTLIB += pthread xcb 
WANTLIB += c++ c++abi


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	--enable-shared
CONFIGURE_ENV+= 	CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib" \
			LIBS="-lm"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ode
	${INSTALL_DATA} ${WRKSRC}/LICENSE.TXT ${PREFIX}/share/doc/ode/LICENSE
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/ode/README
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ode/
	${INSTALL_PROGRAM} ${WRKSRC}/ode/demo/.libs/demo_* \
		 ${PREFIX}/share/examples/ode/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ode/textures/
	${INSTALL_DATA} ${WRKSRC}/drawstuff/textures/* \
		${PREFIX}/share/examples/ode/textures/


.include <bsd.port.mk>
