# $OpenBSD: Makefile,v 1.18 2014/10/28 15:14:14 sthen Exp $

COMMENT=	implementation of Gadu-Gadu IM protocol

VER=		1.12.0
DISTNAME=	libgadu-${VER}
REVISION=	1
EPOCH=		0
CATEGORIES=	net
MASTER_SITES=	http://github.com/wojtekka/libgadu/releases/download/${VER}/

SHARED_LIBS=	gadu	7.0

HOMEPAGE=	http://libgadu.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	pthread z

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-tests \
		--without-bind \
		--without-gnutls \
		--without-openssl

NO_TEST=	Yes

.include <bsd.port.mk>
