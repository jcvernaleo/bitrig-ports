# $OpenBSD: Makefile,v 1.5 2014/11/05 11:43:59 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	online banking interface and financial data framework

# update the "release=XX" in DISTFILES, not just DISTNAME
DISTNAME=	aqbanking-5.5.0.2git
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{download.php?package=03\&release=117\&file=01}
WRKDIST=	${WRKDIR}/aqbanking-5.5.0.2-git
REVISION=	0

SHARED_LIBS +=	aqbanking            2.0      # 39.2
SHARED_LIBS +=	aqbankingpp          0.0      # unknown
SHARED_LIBS +=	aqhbci               1.0      # 22.0
SHARED_LIBS +=	aqnone               0.0      # 39.2
SHARED_LIBS +=	aqofxconnect         0.2      # 7.2
SHARED_LIBS +=	aqebics              0.0      # unknown

CATEGORIES=	productivity

HOMEPAGE=	http://www.aquamaniac.de/sites/aqbanking/

# GPLv2 or GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gcrypt gmp gnutls gpg-error gwenhywfar hogweed
WANTLIB += ltdl lzma m nettle p11-kit pthread tasn1 xml2 xmlsec1
WANTLIB += xmlsec1-gcrypt xmlsec1-gnutls xslt z
WANTLIB += c++ c++abi

MASTER_SITES=	http://www.aquamaniac.de/sites/download/

MODULES=		devel/gettext
LIB_DEPENDS=		devel/gmp \
			devel/gwenhywfar \
			security/xmlsec

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-release=yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
