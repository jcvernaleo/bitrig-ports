# $OpenBSD: Makefile,v 1.19 2014/12/03 21:56:44 kili Exp $

COMMENT =		xhtml templating system

DISTNAME =		heist-0.12.0
REVISION =		0
CATEGORIES =		textproc

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-MonadCatchIO-transformers>=0.2.1,<0.4 \
			devel/hs-aeson>=0.6,<0.7 \
			devel/hs-blaze-builder>=0.2,<0.4 \
			devel/hs-directory-tree>=0.10,<0.12 \
			devel/hs-dlist>=0.5,<0.6 \
			devel/hs-errors>=1.4,<1.5 \
			devel/hs-hashable>=1.1,<1.3 \
			devel/hs-mtl>=2.0,<2.2 \
			devel/hs-random>=1.0.1.0,<1.1 \
			devel/hs-text>=0.10,<0.12 \
			devel/hs-unordered-containers>=0.1.4,<0.3 \
			devel/hs-vector>=0.9,<0.11 \
			textproc/hs-attoparsec>=0.10,<0.11 \
			textproc/hs-blaze-html>=0.4,<0.7 \
			textproc/hs-xmlhtml>=0.2.1,<0.3

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
