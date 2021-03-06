# $OpenBSD: Makefile,v 1.28 2014/12/12 21:51:07 sthen Exp $

COMMENT=	client for Cisco AnyConnect SSL VPN

DISTNAME=	openconnect-7.01

SHARED_LIBS +=  openconnect               4.0 # 5.0

CATEGORIES=	net

HOMEPAGE=	http://www.infradead.org/openconnect/

# LGPLv2.1 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gmp gnutls hogweed m nettle oath p11-kit proxy pthread
WANTLIB += tasn1 xml2 z ffi
WANTLIB += c++ c++abi

MASTER_SITES=	ftp://ftp.infradead.org/pub/openconnect/

MODULES=		devel/gettext \
			lang/python
MODPY_RUNDEP=		No
# groff is used to format html during build, USE_GROFF not needed
# XXX can probably convert to using mandoc?
BUILD_DEPENDS=		textproc/groff \
			textproc/py-xml
LIB_DEPENDS=		security/gnutls \
			textproc/libxml \
			net/libproxy>=0.4.6p7 \
			security/oath-toolkit>=2.0.2
RUN_DEPENDS=		net/vpnc-scripts

FAKE_FLAGS=		pkgdatadir=${PREFIX}/share/doc/openconnect

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"
CONFIGURE_ARGS=	--with-vpnc-script=${SYSCONFDIR}/vpnc-script \
		--without-stoken
# make sure libstoken isn't picked up automatically if we import it.

.include <bsd.port.mk>
