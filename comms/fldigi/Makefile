# $OpenBSD: Makefile,v 1.7 2014/09/16 16:21:12 sthen Exp $

COMMENT=	soundcard-based software modem for Amateur Radio use

DISTNAME=	fldigi-3.21.83

CATEGORIES=	comms hamradio

REVISION=	1

HOMEPAGE=	http://www.w1hkj.com/Fldigi.html

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xft Xinerama c fltk fltk_images
WANTLIB += fontconfig hamlib jpeg m png portaudio pthread samplerate
WANTLIB += sndfile z
WANTLIB += c++ c++abi

MASTER_SITES=	http://www.w1hkj.com/downloads/fldigi/

MODULES=	devel/gettext
RUN_DEPENDS=	devel/desktop-file-utils
BUILD_DEPENDS=	textproc/asciidoc
LIB_DEPENDS=	audio/libsamplerate \
		audio/libsndfile \
		audio/portaudio-svn \
		comms/hamlib \
		graphics/png \
		x11/fltk

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-oss \
		--without-pulseaudio

MAKE_FLAGS=	ASCIIDOC_ICONS_DIR=${SYSCONFDIR}/asciidoc/images/icons

# not highly useful, but we may as well run them..
TEST_DEPENDS=	textproc/gsed

# supplied empty *.1 files are newer than .txt files
post-extract:
	touch ${WRKSRC}/doc/*txt

.include <bsd.port.mk>
