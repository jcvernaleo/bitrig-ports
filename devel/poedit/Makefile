# $OpenBSD: Makefile,v 1.19 2013/08/22 09:44:02 sthen Exp $

COMMENT=	cross-platform gettext catalogs (PO-files) editor

DISTNAME=	poedit-1.3.7
REVISION=	8
CATEGORIES=	devel

HOMEPAGE=	http://www.poedit.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=poedit/}

# GPL
PERMIT_PACKAGE_CDROM=   Yes

USE_GROFF =	Yes

WANTLIB=	c m pthread wx_base_xml wx_gtk2_html wx_gtk2_adv \
		wx_gtk2_xrc wx_base wx_gtk2_core
WANTLIB += c++ c++abi pthread
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS=	x11/wxWidgets>=2.6.3

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	--disable-spellchecking

LIB_DEPENDS +=	databases/db/v4
WANTLIB +=	db>=4

CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib/db4" \
		CPPFLAGS="-I${LOCALBASE}/include/db4"

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/admin

.include <bsd.port.mk>
