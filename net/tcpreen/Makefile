# $OpenBSD: Makefile,v 1.20 2013/03/11 11:35:57 espie Exp $

COMMENT=		simple tcp re-engineering tool

DISTNAME=		tcpreen-1.4.4
REVISION=		3
CATEGORIES=		net

HOMEPAGE=		http://www.remlab.net/tcpreen/

MASTER_SITES=		http://www.remlab.net/files/tcpreen/stable/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m
WANTLIB +=		c++ c++abi pthread

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

FAKE_FLAGS+=		localedir="${PREFIX}/share/locale" \
			gettextsrcdir="${PREFIX}/share/gettext/po"
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
