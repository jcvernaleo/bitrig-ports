# $OpenBSD: Makefile,v 1.14 2013/03/21 08:45:12 ajacoutot Exp $

COMMENT=	high-quality MPEG audio decoder

DISTNAME=	libmad-0.15.1b
REVISION=	4
CATEGORIES=	audio
HOMEPAGE=	http://www.underbit.com/products/mad/
SHARED_LIBS +=	mad                  2.1      # .2.1

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://ftp.mars.org/pub/mpeg/ \
		${MASTER_SITE_SOURCEFORGE:=mad/}

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

post-patch:
	@cp ${FILESDIR}/mad.pc.in ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/mad.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
