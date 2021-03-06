# $OpenBSD: Makefile,v 1.22 2013/12/10 17:37:54 joshe Exp $

# not yet ported to other arches
ONLY_FOR_ARCHS =	amd64 i386 powerpc

COMMENT=		compiler and runtime system for ANSI Common Lisp

V =			1.1.14
DISTNAME=		sbcl-${V}-source
PKGNAME=		sbcl-${V}
REVISION=		0
WRKDIST=		${WRKDIR}/sbcl-${V}
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		lang
HOMEPAGE=		http://www.sbcl.org/

# Public domain and BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sbcl/}

PSEUDO_FLAVORS=		native_bootstrap
FLAVOR?=

USE_GROFF =		Yes

.if ${FLAVOR:Mnative_bootstrap}
BUILD_DEPENDS+=		lang/sbcl
BOOTSTRAP_CMD=		${LOCALBASE}/bin/sbcl \
			--disable-debugger --no-sysinit --no-userinit
.else
BUILD_DEPENDS +=	lang/clisp
BOOTSTRAP_CMD =		${LOCALBASE}/bin/clisp -q -norc
.endif
TEST_DEPENDS =		devel/gmp

USE_GMAKE=		Yes
PORTHOME=		${TMPDIR}
MAKE_ENV=		GNUMAKE=${GMAKE} INSTALL_ROOT=${PREFIX} \
			MAN_DIR=${PREFIX}/man INFO_DIR=${PREFIX}/info

# Upstream asks that packagers append something like this to the
# version to distinguish official tarballs from third-party packages.
.if defined(REVISION) && !empty(REVISION)
LOCAL_VERSION =		openbsd.${REVISION}
.else
LOCAL_VERSION =		openbsd
.endif
VERSION_FILE =		${WRKSRC}/version.lisp-expr

pre-configure:
	sed 's/^"\([0-9.]*\)"$$/"\1.${LOCAL_VERSION}"/' \
		< ${VERSION_FILE} > ${VERSION_FILE}.new
	mv ${VERSION_FILE}.new ${VERSION_FILE}

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} SBCL_CONTRIB_TARGET=all \
		/bin/sh make.sh --prefix=${PREFIX} --xc-host="${BOOTSTRAP_CMD}"
	cd ${WRKSRC}/doc/manual && touch sbcl.texinfo && \
		${SETENV} ${MAKE_ENV} ${GMAKE} asdf.info sbcl.info html

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} /bin/sh install.sh

post-install:
	chown -R 0:0 ${PREFIX}/lib/sbcl

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} DONT_CLEAN_SBCL_CONTRIB=1 \
	    /bin/sh make-target-contrib.sh
	cd ${WRKSRC}/tests && ${SETENV} ${MAKE_ENV} /bin/sh run-tests.sh

.include <bsd.port.mk>
