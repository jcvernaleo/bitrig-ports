# $OpenBSD: Makefile,v 1.19 2013/03/21 08:46:33 ajacoutot Exp $

COMMENT=	GiNaC is Not a Computer Algebra System (CAS)

DISTNAME=	ginac-1.6.2
SHARED_LIBS +=	ginac	3.0	# 0.3
CATEGORIES=	math

REVISION=	2

HOMEPAGE=	http://www.ginac.de/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftpthep.physik.uni-mainz.de/pub/GiNaC/ \
		${HOMEPAGE}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m ncurses readline gmp cln
WANTLIB +=	c++ c++abi pthread

LIB_DEPENDS=	devel/cln \
		devel/readline

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/config

TEST_TARGET=	check

.include <bsd.port.mk>
