# $OpenBSD: Makefile,v 1.18 2013/03/11 11:46:16 espie Exp $

COMMENT=		virtual desktop manager for X11

VERSION=		0.4.0
DISTNAME=		waimea-${VERSION}
REVISION=		7
CATEGORIES=		x11

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/waimea

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=waimea/}

USE_GROFF =	Yes
WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xinerama Xrandr Xrender
WANTLIB += c expat fontconfig freetype m pthread-stubs
WANTLIB += xcb z
WANTLIB += c++ c++abi pthread

AUTOCONF_VERSION=	2.52
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--disable-pixmap

.include <bsd.port.mk>
