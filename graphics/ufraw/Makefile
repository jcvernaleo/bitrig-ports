# $OpenBSD: Makefile,v 1.37 2014/10/08 10:03:30 sthen Exp $

COMMENT=	read and manipulate raw images from digital cameras

DISTNAME=	ufraw-0.20

CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ufraw/}
HOMEPAGE=	http://ufraw.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 bz2 c cairo cfitsio exiv2
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gimp-2.0
WANTLIB += gimpbase-2.0 gimpcolor-2.0 gimpconfig-2.0 gimpmath-2.0
WANTLIB += gimpmodule-2.0 gimpui-2.0 gimpwidgets-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 gtkimageview jasper
WANTLIB += jpeg lcms m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += png pthread tiff z
WANTLIB += c++ c++abi

# don't remove unless you are sure:
WANTLIB += lensfun

LIB_DEPENDS=	gimp->=2,<3:graphics/gimp/stable \
		graphics/lcms2 \
		archivers/bzip2 \
		graphics/exiv2 \
		math/cfitsio \
		graphics/gtkimageview \
		graphics/lensfun

MODULES=	devel/gettext

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread" \
		CFITSIO_CFLAGS="-I${LOCALBASE}/include" \
		CFITSIO_LIBS="-lcfitsio"
CONFIGURE_ARGS=	--enable-extras

.include <bsd.port.mk>
