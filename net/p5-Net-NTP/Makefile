# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:53 espie Exp $

COMMENT =	Perl extension for decoding NTP server responses

DISTNAME =	Net-NTP-1.3
REVISION =	0
CATEGORIES =	net

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =	net/p5-IO-Socket-INET6

# requires access to pool.ntp.org
TEST_IS_INTERACTIVE =Yes

.include <bsd.port.mk>
