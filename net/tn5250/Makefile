# $OpenBSD: Makefile,v 1.12 2013/03/21 08:46:35 ajacoutot Exp $

COMMENT=	5250 telnet protocol and terminal

DISTNAME=	tn5250-0.17.3
REVISION=	3
SHARED_LIBS=	5250	0.0
CATEGORIES=	net

HOMEPAGE=	http://tn5250.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tn5250/}

WANTLIB=	ncurses c ssl crypto

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-os-dir=no --with-ssl

USE_GMAKE=	Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
