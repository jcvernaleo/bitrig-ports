# $OpenBSD: Makefile,v 1.26 2014/10/24 03:44:33 gsoares Exp $

COMMENT =		C/C++ static checker

DISTNAME =		cppcheck-1.67

CATEGORIES =		devel

HOMEPAGE =		http://cppcheck.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c execinfo m pcre
WANTLIB +=		c++ c++abi pthread

BUILD_DEPENDS =		textproc/docbook-xsl

LIB_DEPENDS =		devel/pcre \
			devel/libexecinfo

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cppcheck/}

ALL_TARGET =		cppcheck
TEST_TARGET =		test
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

# -Ilib before PREFIX/include to avoid picking up header from devel/check
MAKE_FLAGS =		BIN=${PREFIX}/bin SRCDIR=build CFGDIR=${PREFIX}/share/cppcheck/cfg \
			CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			CPPFLAGS="-DHAVE_RULES -DTIXML_USE_STL -Ilib -I${PREFIX}/include" \
			LDFLAGS="-L${PREFIX}/lib -lpcre -lexecinfo"

MODULES =		lang/python
MODPY_RUNDEP =		No
CONFIGURE_STYLE =	none

USE_GMAKE =		Yes

pre-configure:
	ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-build:
	cd ${WRKSRC} && \
	${PREFIX}/bin/xsltproc --novalid --nonet --param man.charmap.use.subset "0" \
	${PREFIX}/share/xsl/docbook/manpages/docbook.xsl \
	${WRKSRC}/man/cppcheck.1.xml

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/cppcheck/cfg
	@cp ${WRKSRC}/cfg/* ${PREFIX}/share/cppcheck/cfg/
	${INSTALL_PROGRAM} ${WRKSRC}/cppcheck ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/cppcheck.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
