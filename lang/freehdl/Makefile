# $OpenBSD: Makefile,v 1.4 2013/03/21 08:46:32 ajacoutot Exp $

COMMENT=	open-source (C++ generating) VHDL simulator

DISTNAME=	freehdl-0.0.7
REVISION=	1
CATEGORIES=	lang cad

SHARED_LIBS +=  ieee                      0.0 # 0.0
SHARED_LIBS +=  freehdl-cdfggen           0.0 # 0.0
SHARED_LIBS +=  freehdl-fire              0.0 # 0.0
SHARED_LIBS +=  freehdl-kernel            0.0 # 0.0
SHARED_LIBS +=  freehdl-std               0.0 # 0.0
SHARED_LIBS +=  freehdl-vaul              0.0 # 0.0

HOMEPAGE=	http://www.freehdl.seul.org/

# (L)GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/~enaroska/

WANTLIB += c m
WANTLIB += c++ c++abi pthread

USE_GMAKE=	Yes

# Configure checks for gnu libtool, but the build will use "our" libtool
BUILD_DEPENDS=  devel/libtool

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
