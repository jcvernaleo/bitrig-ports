# $OpenBSD: Makefile,v 1.13 2013/03/21 08:45:14 ajacoutot Exp $

COMMENT=	implementation of the Real-time Transport Protocol

DISTNAME=	ccrtp-1.7.1
REVISION =	5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=ccrtp/}

SHARED_LIBS=	ccrtp1		2.0

HOMEPAGE=	http://www.gnutelephony.org/index.php/GNU_ccRTP

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto ssl ccgnu2>=1 m pthread
WANTLIB += c++ c++abi

LIB_DEPENDS=	devel/commoncpp

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURED_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=no \
		ac_cv_path_LIBGCRYPT_CONFIG=no
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/autoconf

NO_TEST=	Yes

.include <bsd.port.mk>
