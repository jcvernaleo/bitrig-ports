# $OpenBSD: Makefile,v 1.7 2014/10/10 12:12:29 dcoppa Exp $

COMMENT =	performance and usability oriented extensions to C

DISTNAME =	libmowgli-1.0.0
PKGNAME =	${DISTNAME:S/lib//}
REVISION =	3

SHARED_LIBS =	mowgli	1.1

CATEGORIES =	devel

HOMEPAGE =	http://atheme.org/projects/libmowgli.html

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://distfiles.atheme.org/

MAKE_ENV =	LIBmowgli_VERSION=${LIBmowgli_VERSION}

CONFIGURE_STYLE = gnu

NO_TEST =	Yes

.include <bsd.port.mk>
