# $OpenBSD: Makefile,v 1.28 2014/12/15 16:37:59 kili Exp $

COMMENT=		interface generator for Haskell to C bindings

V=			0.16.6
DISTNAME=		c2hs-${V}
REVISION=		0
CATEGORIES=		devel
HOMEPAGE=		http://www.cse.unsw.edu.au/~chak/haskell/c2hs/

MODULES=		lang/ghc converters/libiconv
MODGHC_BUILD=		cabal hackage nort

SUBST_VARS=		V

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m pthread util

BUILD_DEPENDS=		devel/hs-language-c>=0.4.2,<0.5 \
			textproc/docbook-xsl


USE_GMAKE=		Yes

post-build:
	@cd ${WRKSRC}/doc && ${MAKE_PROGRAM}
	@perl -pi -e 's,/usr/share/doc/c2hs.*,${PREFIX}/share/doc/c2hs/,' \
		${WRKSRC}/doc/man1/c2hs.1

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/man1/c2hs.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/c2hs
	${INSTALL_DATA} ${WRKSRC}/doc/users_guide/*.html ${PREFIX}/share/doc/c2hs

# Note: tests are still broken (not maintained by upstream?)
# Note 2: and (at least) the tests don't work with ghc-7 (because ghc
# now defaults to Haskell-2010).
do-test:
	@cd ${WRKDIST}/tests/system && ${MAKE_PROGRAM}

.include <bsd.port.mk>
