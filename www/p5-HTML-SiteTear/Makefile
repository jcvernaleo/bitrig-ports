# $OpenBSD: Makefile,v 1.7 2014/11/10 11:09:57 benoit Exp $

COMMENT=	make a separate copy of a web site in local file system

MODULES=	cpan
DISTNAME =	HTML-SiteTear-1.44
CATEGORIES=	www
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		www/p5-HTML-Copy \
		www/p5-HTML-Parser \
		www/p5-HTML-Tagset \
		www/p5-URI \
		www/p5-libwww

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
