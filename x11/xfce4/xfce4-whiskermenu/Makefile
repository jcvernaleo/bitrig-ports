# $OpenBSD: Makefile,v 1.4 2014/12/06 11:06:45 landry Exp $

COMMENT =	Xfce4 alternative applications menu panel plugin

XFCE_VERSION =	1.4.1
XFCE_PLUGIN =	whiskermenu
REVISION =	1

MASTER_SITES =	http://gottcode.org/xfce4-whiskermenu-plugin/
DISTNAME =	xfce4-${XFCE_PLUGIN}-plugin-${XFCE_VERSION}-src
HOMEPAGE =	http://gottcode.org/xfce4-whiskermenu-plugin/
PKGNAME =	${DISTNAME:S/-plugin//:S/-src//}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	x11/xfce4 devel/cmake
WRKDIST =	${WRKDIR}/${DISTNAME:S/-src//}
CONFIGURE_STYLE =	cmake

MODXFCE_ICON_CACHE=	Yes

WANTLIB += cairo exo-1 garcon-1 gdk-x11-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 xfce4ui-1 xfce4util
WANTLIB += c++ c++abi pthread

.include <bsd.port.mk>
