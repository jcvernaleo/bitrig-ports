# $OpenBSD: Makefile,v 1.11 2014/01/19 20:43:34 jeremy Exp $

COMMENT =	real-time stats toolkit for Rack HTTP servers

DISTNAME =	raindrops-0.10.0
REVISION =	5
CATEGORIES =	www

# LGPLv2.1/LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE =	ruby gem ext

# XXX only actually required for gcc2/3 arch
BUILD_DEPENDS +=	libatomic_ops-*:devel/boehm-gc,-atomic

TEST_DEPENDS =	devel/gmake \
			www/ruby-unicorn,${MODRUBY_FLAVOR} \
			${FULLPKGNAME}:${BUILD_PKGPATH}

post-extract:
	chmod 644 ${WRKSRC}/{NEWS,ChangeLog}

do-test:
	cd ${WRKSRC} && ${SETENV} RUBYOPT=-rubygems \
		RUBYLIB=${WRKSRC}/lib gmake test RUBY=${RUBY}

.include <bsd.port.mk>
