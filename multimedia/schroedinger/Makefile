# $OpenBSD: Makefile,v 1.12 2013/03/21 08:46:33 ajacoutot Exp $

COMMENT=	high-speed Dirac codec

DISTNAME=	schroedinger-1.0.11
REVISION=	2
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}/download/schroedinger/

SHARED_LIBS=	schroedinger-1.0	3.0

HOMEPAGE=	http://diracvideo.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m orc-0.4>=4.0 pthread
WANTLIB +=	c++ c++abi

LIB_DEPENDS=	devel/orc>=0.4.16p0

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.68

.include <bsd.port.mk>
