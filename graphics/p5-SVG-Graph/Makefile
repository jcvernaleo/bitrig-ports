# $OpenBSD: Makefile,v 1.7 2013/03/11 11:10:55 espie Exp $

COMMENT =		visualize your data in SVG format

DISTNAME =		SVG-Graph-0.02
CATEGORIES =		graphics
REVISION =		2

# Artistic License 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
USE_GROFF =		Yes

RUN_DEPENDS =		devel/p5-Tree-DAG_Node \
			graphics/p5-SVG \
			math/p5-Math-Derivative \
			math/p5-Math-Spline \
			math/p5-Statistics-Descriptive \

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
