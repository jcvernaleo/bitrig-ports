# $OpenBSD: Makefile,v 1.17 2013/03/21 08:45:12 ajacoutot Exp $

COMMENT=	MPEG-2 and MPEG-4 AAC encoder

DISTNAME=	faac-1.28
REVISION=	6
CATEGORIES=    	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=faac/}

SHARED_LIBS +=	faac                 1.0      # .0.0

HOMEPAGE=	http://www.audiocoding.com/

# LGPLv2 + MPEG reference (incompatible)
PERMIT_PACKAGE_CDROM=	Cannot distribute
PERMIT_PACKAGE_FTP=	Cannot distribute
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m mp4v2>=3
WANTLIB+=	c++ c++abi pthread

# uses macros from libtool.m4
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool
LIB_DEPENDS=	multimedia/libmp4v2>=1.9.1

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
AUTOCONF_VERSION= 2.61
AUTOMAKE_VERSION= 1.9
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} PATH=${PORTPATH} \
		sh bootstrap

.include <bsd.port.mk>
