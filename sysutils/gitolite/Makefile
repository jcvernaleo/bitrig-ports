# $OpenBSD: Makefile,v 1.6 2014/07/10 11:06:37 rpe Exp $

PKG_ARCH=		*

COMMENT=		secure hosting of Git repositories

GH_VER=			v3.6
DISTNAME=		gitolite-${GH_VER:S/v//}
CATEGORIES=		sysutils devel

HOMEPAGE=		https://github.com/sitaramc/gitolite/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://github.com/sitaramc/gitolite/archive/
DISTFILES=		${DISTNAME}{${GH_VER}}${EXTRACT_SUFX}

RUN_DEPENDS=		devel/git

NO_BUILD=		Yes
NO_TEST=		Yes

SUBST_VARS+=		GH_VER
GL_DIR=			${PREFIX}/libexec/gitolite/

do-install:
	${SUBST_CMD} ${WRKSRC}/install
	${INSTALL_DATA_DIR} ${GL_DIR}
	perl ${WRKSRC}/install -to ${GL_DIR}
	cd ${PREFIX}/bin/ && ln -s ../libexec/gitolite/gitolite

.include <bsd.port.mk>
