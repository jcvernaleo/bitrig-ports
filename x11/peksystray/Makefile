# $OpenBSD: Makefile,v 1.10 2013/03/11 11:46:14 espie Exp $

COMMENT=		freedesktop.org compliant system tray

DISTNAME=		peksystray-0.4.0
REVISION=		2
CATEGORIES=		x11
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://sourceforge.net/projects/peksystray/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c X11 ICE SM

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=peksystray/}

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	simple

NO_TEST=		Yes

.include <bsd.port.mk>
