# $OpenBSD: Makefile,v 1.9 2013/03/21 08:45:13 ajacoutot Exp $

COMMENT=	NEC2++ antenna simulator

DISTNAME=	necpp-1.2.3
REVISION=	4
CATEGORIES=    	cad hamradio

HOMEPAGE=	http://elec.otago.ac.nz/w/index.php/Necpp
MASTER_SITES=	http://openbsd.dead-parrot.de/distfiles/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=gnu

SHARED_LIBS=necpp 0.0

WANTLIB=c m
WANTLIB+=c++ c++abi pthread

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/necpp
	${INSTALL_DATA} ${WRKSRC}/test_data/* ${PREFIX}/share/examples/necpp

.include <bsd.port.mk>
