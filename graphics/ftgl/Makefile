# $OpenBSD: Makefile,v 1.10 2013/03/21 08:45:18 ajacoutot Exp $

COMMENT =		font rendering library for OpenGL applications

V =			2.1.3
DISTNAME =		ftgl-$V-rc5
PKGNAME =		ftgl-$Vrc5
REVISION =		3
EPOCH =			0
SHARED_LIBS =		ftgl	0.0	# 2.1
CATEGORIES =		graphics

HOMEPAGE =		http://ftgl.wiki.sourceforge.net

# MIT license or the GNU LGPL, at your option.
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =		${WRKDIR}/${DISTNAME:S/-rc/~rc/}
WANTLIB =		GL GLU ICE SM X11 Xext Xmu Xt freetype m \
			xcb z Xdamage Xfixes Xxf86vm drm
WANTLIB +=		c++ c++abi pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ftgl/}
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}			\
			--with-gl-inc=${X11BASE}/include	\
			--with-gl-lib=${X11BASE}/lib
CONFIGURE_ENV +=	ac_cv_path_DOXYGEN=no
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/.auto

# 2.1.3~rc5 is a ridiculous version to stow in a pkg-config file,
# so add this workaround to prevent pkg-config from choking.
pre-configure:
	perl -pi -e 's,\@PACKAGE_VERSION\@,${V},' ${WRKSRC}/ftgl.pc.in

post-install:
	${INSTALL_DATA} \
		${WRKSRC}/src/FTLibrary.h \
		${WRKSRC}/src/FTFace.h \
		${WRKSRC}/src/FTSize.h \
		${PREFIX}/include/FTGL/

.include <bsd.port.mk>
