# $OpenBSD: Makefile,v 1.20 2014/11/06 17:13:39 sthen Exp $

COMMENT=	PHP support for the ImageMagick library

DISTNAME=	imagick-3.1.0rc2
REVISION=	0
WRKDIST=	${WRKDIR}/imagick-3.1.0RC2
CATEGORIES=	graphics
REVISION=	0

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE MagickCore MagickWand SM X11 Xext Xt bz2 djvulibre
WANTLIB += expat fftw3 fontconfig freetype jasper jbig jpeg lcms2
WANTLIB += ltdl lzma m png pthread tiff wmf-0.2 wmflite-0.2 xcb xml2 z

MODULES=	converters/libiconv \
		lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	graphics/ImageMagick

.include <bsd.port.mk>
