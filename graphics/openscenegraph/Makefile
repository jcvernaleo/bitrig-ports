# $OpenBSD: Makefile,v 1.2 2014/11/07 10:40:05 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		3D graphics toolkit

V =			3.2.0
DISTNAME =		OpenSceneGraph-${V}
PKGNAME =		openscenegraph-${V}
REVISION =		1

SUBST_VARS +=		V

SHARED_LIBS  =  OpenThreads               0.0 # 2.6
SHARED_LIBS +=  osg                       0.0 # 3.0
SHARED_LIBS +=  osgAnimation              0.0 # 3.0
SHARED_LIBS +=  osgDB                     0.0 # 3.0
SHARED_LIBS +=  osgFX                     0.0 # 3.0
SHARED_LIBS +=  osgGA                     0.0 # 3.0
SHARED_LIBS +=  osgManipulator            0.0 # 3.0
SHARED_LIBS +=  osgParticle               0.0 # 3.0
SHARED_LIBS +=  osgPresentation           0.0 # 3.0
SHARED_LIBS +=  osgQt                     0.0 # 3.0
SHARED_LIBS +=  osgShadow                 0.0 # 3.0
SHARED_LIBS +=  osgSim                    0.0 # 3.0
SHARED_LIBS +=  osgTerrain                0.0 # 3.0
SHARED_LIBS +=  osgText                   0.0 # 3.0
SHARED_LIBS +=  osgUtil                   0.0 # 3.0
SHARED_LIBS +=  osgViewer                 0.0 # 3.0
SHARED_LIBS +=  osgVolume                 0.0 # 3.0
SHARED_LIBS +=  osgWidget                 0.0 # 3.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.openscenegraph.org

# OSGPL (see LICENSE.txt)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Half Iex IlmImf IlmThread QtGui QtOpenGL X11 Xrandr
WANTLIB += avcodec avdevice avformat avutil c cairo curl freetype
WANTLIB += gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 gobject-2.0
WANTLIB += jasper jpeg m png poppler-glib pthread rsvg-2
WANTLIB += swscale tiff z SDL
WANTLIB += c++ c++abi pthread

MASTER_SITES =		${HOMEPAGE}/downloads/developer_releases/
EXTRACT_SUFX =		.zip

MODULES =		devel/cmake \
			x11/qt4 \
			devel/gettext
LIB_DEPENDS =		graphics/openexr \
			graphics/ffmpeg \
			graphics/gdk-pixbuf2 \
			graphics/giflib \
			net/curl \
			print/poppler \
			x11/gnome/librsvg

NO_TEST =		Yes

.include <bsd.port.mk>
