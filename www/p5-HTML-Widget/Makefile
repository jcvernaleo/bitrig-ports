# $OpenBSD: Makefile,v 1.12 2013/03/11 11:44:46 espie Exp $

COMMENT=	HTML widget and validation framework

DISTNAME=	HTML-Widget-1.11
REVISION=	1
CATEGORIES=	www

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor-Chained \
		devel/p5-Class-Data-Accessor \
		devel/p5-Date-Calc \
		devel/p5-Module-Pluggable-Fast \
		mail/p5-Email-Valid \
		www/p5-HTML-Tree>=3.23 \
		www/p5-HTML-Scrubber 
TEST_DEPENDS=devel/p5-Test-NoWarnings

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
