# $OpenBSD: Makefile,v 1.7 2013/03/11 11:42:45 espie Exp $

COMMENT=	efficiently fetch RSS feeds

MODULES=	cpan
DISTNAME=	XML-RSS-TimingBot-2.03
REVISION=	1
CATEGORIES=	textproc
USE_GROFF =	Yes

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-LWP-UserAgent-Determined \
		textproc/p5-XML-RSS \
		textproc/p5-XML-RSS-Timing \
		textproc/p5-XML-LibXML \
		textproc/p5-XML-XSLT

.include <bsd.port.mk>
