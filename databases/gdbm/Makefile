# $OpenBSD: Makefile,v 1.35 2014/11/01 19:29:54 jasper Exp $

COMMENT=		GNU dbm

VERSION=		1.11
REVISION=		0
DISTNAME=		gdbm-${VERSION}
CATEGORIES=		databases

SHARED_LIBS +=	gdbm                 4.1      # 4.1

HOMEPAGE=		https://www.gnu.org/software/gdbm/

MASTER_SITES=		${MASTER_SITE_GNU:=gdbm/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

WANTLIB +=		c

USE_GROFF =		Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build-aux

# needed for gsort
TEST_DEPENDS +=		sysutils/coreutils

post-extract:
	perl -pi -e 's,sort,gsort,g' ${WRKSRC}/tests/testsuite

.include <bsd.port.mk>
