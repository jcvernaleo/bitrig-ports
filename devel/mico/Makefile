# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:11 espie Exp $

COMMENT=	free and complete CORBA-compliant implementation

V=		2.3.13
DISTNAME=	mico-${V}
CATEGORIES=	devel

REVISION=	2

# The build framework accommodates only a single shared lib extension.
SHARED_LIBS=	mico${V}	${LIB_VERSION} \
		micoaux${V}	${LIB_VERSION} \
		micocoss${V}	${LIB_VERSION} \
		micoir${V}	${LIB_VERSION} \
		micox${V}	${LIB_VERSION}
LIB_VERSION=	0.0

HOMEPAGE=	http://www.mico.org/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mico/}

# LGPL/GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ncurses readline
WANTLIB+=		crypto ssl ICE SM X11 Xt pthread
WANTLIB+=		c++ c++abi
LIB_DEPENDS=		devel/readline

USE_GMAKE=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LIB_VERSION=${LIB_VERSION}
CONFIGURE_ARGS+=	--disable-optimize
CONFIGURE_ARGS+=	--with-ssl

SUBST_VARS+=		V
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/admin

FAKE_FLAGS=		INSTDIR=${WRKINST}${PREFIX} \
			SHARED_INSTDIR=${DESTDIR}${PREFIX}/share

WRKDIST=		${WRKDIR}/mico

pre-build:
	cd ${WRKSRC}/idl && ${GMAKE} generate

pre-test:
	cd ${WRKSRC}/test && ${GMAKE} prg

.include <bsd.port.mk>
