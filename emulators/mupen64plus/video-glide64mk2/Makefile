# $OpenBSD: Makefile,v 1.3 2014/04/17 07:03:59 bentley Exp $

COMMENT =		n64 emulator video plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
REVISION =		2

WANTLIB =		GL SDL boost_filesystem boost_system c m png pthread z
LIB_DEPENDS =		devel/boost devel/sdl graphics/png

MUPEN64PLUS_MOD = 	video-glide64mk2

.include <bsd.port.mk>
