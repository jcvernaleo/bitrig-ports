# $OpenBSD: Makefile,v 1.7 2014/10/16 12:54:21 nigel Exp $

COMMENT =	create SOCKS v4/v5 client or server


DISTNAME =	IO-Socket-Socks-0.65

CATEGORIES =	net
CPAN_AUTHOR =	OLEG

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

MODCPAN_EXAMPLES =	Yes

TEST_ENV += SOCKS_SLOW_TESTS=1

.include <bsd.port.mk>
