# $OpenBSD: Makefile,v 1.53 2014/10/30 16:08:25 bluhm Exp $

SHARED_ONLY =		Yes

COMMENT =		module to interface the DNS resolver

DISTNAME =		Net-DNS-0.81

CATEGORIES =		net

HOMEPAGE =		http://www.net-dns.org/

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		security/p5-Digest-HMAC>=1.01
TEST_DEPENDS =		devel/p5-Test-Pod \
			net/p5-Net-DNS-SEC \
			net/p5-IO-Socket-INET6 \
			security/p5-Digest-BubbleBabble

CONFIGURE_ARGS =	--noonline-tests

.include <bsd.port.mk>
