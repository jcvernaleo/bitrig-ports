# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:42 espie Exp $

COMMENT=	command-line online gallery generator

DISTNAME=	llgal-0.13.17
REVISION=	0
CATEGORIES=	www graphics

HOMEPAGE=	http://home.gna.org/llgal/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://download.gna.org/llgal/
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	graphics/ImageMagick \
		graphics/p5-Image-ExifTool \
		graphics/p5-Image-Size \
		devel/p5-Locale-gettext \
		www/p5-URI

USE_GMAKE=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
USE_GROFF =	Yes

MAKE_ENV=	SYSCONFDIR=${SYSCONFDIR}

pre-build:
	@perl -pi -e 's,/usr/share,${PREFIX}/share,' ${WRKSRC}/llgal.1

post-install:
	${INSTALL_MAN} ${WRKSRC}/llgal.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/llgalrc.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
