# $OpenBSD: Makefile,v 1.9 2014/03/25 21:20:39 espie Exp $

COMMENT =	skeletal based character animation library
DISTNAME =	cal3d-0.11.0
REVISION =	3

SHARED_LIBS =	cal3d	1.0	# .12.0

CATEGORIES =	graphics

HOMEPAGE =	http://home.gna.org/cal3d/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m
WANTLIB +=	c++ c++abi pthread

MASTER_SITES =	http://download.gna.org/cal3d/sources/

USE_GROFF =	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
