# $OpenBSD: Makefile,v 1.6 2013/03/11 11:35:45 espie Exp $

COMMENT=	tiny download accelerator
DISTNAME=	axel-2.4
REVISION=	0
CATEGORIES=	net

HOMEPAGE=	http://axel.alioth.debian.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://alioth.debian.org/frs/download.php/3015/

WANTLIB=	c pthread

MODULES=	devel/gettext

USE_GMAKE=	Yes
USE_GROFF =	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--etcdir=${SYSCONFDIR} \
		--mandir=${PREFIX}/man \
		--i18n=1

MAKE_FLAGS=	CC=${CC} \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LFLAGS="-L${LOCALBASE}/lib -pthread -lintl -liconv"
FAKE_FLAGS=	ETCDIR=${PREFIX}/share/examples/axel

pre-configure:
	@perl -pi -e 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/axel.1

.include <bsd.port.mk>
