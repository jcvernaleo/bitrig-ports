# $OpenBSD: Makefile,v 1.7 2014/12/15 20:04:48 brad Exp $

NOT_FOR_ARCHS=		${GCC3_ARCHS}
BROKEN-mips64 =		undefined reference to `__sync_fetch_and_or_4'
BROKEN-mips64el =	undefined reference to `__sync_fetch_and_or_4'

COMMENT=	free H.265/HEVC encoder

VER=		1.4
DISTNAME=	x265-${VER}
REVISION=	0
DISTFILES=	${DISTNAME}{${VER}}${EXTRACT_SUFX}
CATEGORIES=	multimedia
MASTER_SITES=	https://bitbucket.org/multicoreware/x265/get/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	x265	1.0

HOMEPAGE=	http://x265.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m pthread c++ c++abi

WRKDIST=	${WRKDIR}/multicoreware-x265-5e604833c5aa
WRKSRC=		${WRKDIST}/source

MODULES=	devel/cmake \
		lang/clang

MODCLANG_ARCHS=	amd64 i386
MODCLANG_LANGS=	c c++

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/yasm
.endif

SEPARATE_BUILD=	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
