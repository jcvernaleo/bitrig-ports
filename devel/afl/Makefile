#	$OpenBSD: Makefile,v 1.5 2014/12/15 14:13:59 jsg Exp $

ONLY_FOR_ARCHS= i386 amd64

COMMENT=	instrumented fuzzer
DISTNAME=	afl-0.90b
EXTRACT_SUFX=	.tgz
CATEGORIES=	devel

HOMEPAGE=	http://lcamtuf.coredump.cx/afl/
MASTER_SITES=	${HOMEPAGE}/releases/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=		Yes
FAKE_FLAGS=		PREFIX="${TRUEPREFIX}"
TEST_TARGET=		test_build
WANTLIB=		c

.include <bsd.port.mk>
