# $OpenBSD: Makefile,v 1.11 2014/11/22 18:53:31 naddy Exp $

COMMENT =	interface to the wxWidgets cross-platform GUI toolkit

MODULES =	cpan
DISTNAME =	Wx-0.92
REVISION =	5
CATEGORIES =	x11 devel
CPAN_AUTHOR =	MBARBON
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Alien-wxWidgets \
		devel/p5-ExtUtils-XSpp

LIB_DEPENDS =	x11/wxWidgets
WANTLIB += c m pthread wx_base wx_base_net wx_base_xml wx_gtk2_adv
WANTLIB += wx_gtk2_aui wx_gtk2_core wx_gtk2_html wx_gtk2_richtext
WANTLIB += wx_gtk2_stc wx_gtk2_xrc
WANTLIB += c++ c++abi

BUILD_DEPENDS =	devel/p5-Module-Pluggable \
		${RUN_DEPENDS}

# remove -lpthread once ExtUtils::MakeMaker is fixed
CONFIGURE_ARGS=	LIBS="-lc++ -lc++abi -lpthread -L${LOCALBASE}/lib -lwx_base_net -lwx_base_xml -lwx_gtk2_adv -lwx_gtk2_aui -lwx_gtk2_core -lwx_gtk2_html -lwx_gtk2_richtext -lwx_gtk2_stc -lwx_gtk2_xrc"

.include <bsd.port.mk>
