# $OpenBSD: Makefile,v 1.10 2013/03/11 11:35:46 espie Exp $

COMMENT=	NetFlow collector

DISTNAME=	flowd-0.9.1
REVISION=	0
CATEGORIES=	net
MASTER_SITES=	http://www2.mindrot.org/files/flowd/

HOMEPAGE=	http://www.mindrot.org/projects/flowd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c
USE_GROFF =		Yes
NO_TEST=		Yes

CONFIGURE_STYLE=	gnu

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/examples/flowd
	$(INSTALL_DATA) ${WRKSRC}/flowd.conf ${PREFIX}/share/examples/flowd

.include <bsd.port.mk>
