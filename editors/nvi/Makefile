# $OpenBSD: Makefile,v 1.10 2013/11/20 03:43:05 bentley Exp $

COMMENT=	ex/vi text editor with wide character support

V =		2.1.2
DISTNAME =	nvi-${V}
REVISION =	0
CATEGORIES=	editors
HOMEPAGE=	https://github.com/lichray/nvi2

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	https://github.com/bentley/nvi2/releases/download/v${V}/

WANTLIB=	c ncursesw util

MODULES=	devel/cmake

# the specialized commands don't work yet.
# until we figure out a graceful way to deal with $@ in cmake.
USE_NINJA =	No

# ${WRKSRC}/config.h is written
SEPARATE_BUILD=	No

WRKSRC=		${WRKDIST}/build

FLAVORS=	iconv
FLAVOR?=

.if ${FLAVOR:Miconv}
MODULES+=	converters/libiconv
.else
CONFIGURE_ARGS=	-DUSE_ICONV:Bool=False
.endif

post-patch:
	perl -pi.bak \
	    -e 's:/usr/share/vi/catalog/:${PREFIX}/share/vi/catalog/:' \
	    ${WRKSRC}/pathnames.h.in

post-build:
	cd ${WRKDIST}/catalog && ${MAKE_PROGRAM}

CATALOGS=	dutch english french german polish ru_RU.KOI8-R spanish \
		swedish uk_UA.KOI8-U zh_CN.GB2312

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/nvi ${PREFIX}/bin
	cd ${PREFIX}/bin; ln nvi nex; ln nvi nview
	${INSTALL_MAN} ${WRKDIST}/docs/man/vi.1 ${PREFIX}/man/man1/nvi.1
	cd ${PREFIX}/man/man1; ln nvi.1 nex.1; ln nvi.1 nview.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/vi/catalog
	cd ${WRKDIST}/catalog; \
	    ${INSTALL_DATA} ${CATALOGS} ${PREFIX}/share/vi/catalog

.include <bsd.port.mk>
