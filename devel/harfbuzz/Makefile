# $OpenBSD: Makefile,v 1.26 2014/12/19 13:43:26 ajacoutot Exp $

COMMENT-main=		text shaping library
COMMENT-icu=		ICU support for libharfbuzz

V=			0.9.37
DISTNAME=		harfbuzz-${V}
EXTRACT_SUFX=		.tar.bz2

PKGNAME-main=		harfbuzz-${V}
PKGNAME-icu=		harfbuzz-icu-${V}

SHARED_LIBS +=  harfbuzz             5.0      # 935.0
SHARED_LIBS +=  harfbuzz-icu         0.2      # 935.0

CATEGORIES=		devel graphics textproc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/HarfBuzz

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += freetype glib-2.0 graphite2 m pcre pthread z
WANTLIB += c++ c++abi pthread

MASTER_SITES=		http://www.freedesktop.org/software/harfbuzz/release/

MULTI_PACKAGES=		-main -icu

MODULES=		devel/gettext

USE_GMAKE=		Yes

WANTLIB-main += ${WANTLIB}
WANTLIB-main += X11 Xext Xrender c cairo expat fontconfig pixman-1
WANTLIB-main += png pthread-stubs xcb xcb-render xcb-shm

WANTLIB-icu += ${WANTLIB}
WANTLIB-icu += harfbuzz icudata icuuc

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			graphics/cairo \
			graphics/graphite2

LIB_DEPENDS-icu=	devel/harfbuzz,-main=${V} \
			textproc/icu4c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-graphite2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/check-symbols.sh

.include <bsd.port.mk>
