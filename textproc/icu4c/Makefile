# $OpenBSD: Makefile,v 1.43 2014/11/03 12:29:31 ajacoutot Exp $

# XXX re-rolled tarball: drop at next release
DIST_SUBDIR=		icu4c

NOT_FOR_ARCHS=		${GCC3_ARCHS}

COMMENT=		International Components for Unicode

VERSION=		54.1
DISTNAME=		icu4c-${VERSION:S/./_/g}-src
PKGNAME=		icu4c-${VERSION}
REVISION=		2

MAJ_V=			${VERSION:R}
SO_VERSION=		8.0
.for _lib in icudata icui18n icuio icule iculx icutest icutu icuuc
SHARED_LIBS+=		${_lib} ${SO_VERSION}
.endfor
SUBST_VARS+=		MAJ_V VERSION

CATEGORIES=		textproc devel
DPB_PROPERTIES=		parallel

HOMEPAGE=		http://www.icu-project.org

# ICU
# http://source.icu-project.org/repos/icu/icu/trunk/license.html
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m pthread
WANTLIB +=		c++ c++abi

MASTER_SITES=		http://download.icu-project.org/files/icu4c/${VERSION}/ \
			${MASTER_SITE_SOURCEFORGE:=icu/}
EXTRACT_SUFX=		.tgz

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKDIST}/source

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--disable-extras \
			--disable-samples

SEPARATE_BUILD=		Yes
WRKDIST=		${WRKDIR}/icu
WRKSRC=			${WRKDIST}/source

MAKE_FLAGS=		SO_TARGET_VERSION=${SO_VERSION} \
			SO_TARGET_VERSION_MAJOR=${SO_VERSION:R} \
			PKGDATA_INVOKE_OPTS="SO_TARGET_VERSION=${SO_VERSION} SO_TARGET_VERSION_MAJOR=${SO_VERSION:R}"

# icupkg segfaults during the build
.if ${MACHINE_ARCH} == "arm"
CFLAGS +=		-O1 -fno-stack-protector
.endif

.include <bsd.port.arch.mk>
PKG_ARGS +=		-Dbe=0 -Dle=0
.if ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--with-data-packaging=archive
.  if ${PROPERTIES:Mbe}
PKG_ARGS +=		-Dbe=1
TEST_ENV +=		ICU_DATA="${WRKBUILD}/data/out/build/icudt${MAJ_V}b"
.  else
PKG_ARGS +=		-Dle=1
TEST_ENV +=		ICU_DATA="${WRKBUILD}/data/out/build/icudt${MAJ_V}l"
.  endif
.endif

post-install:
# Bug #7506, #7567 and #7574, libicutest is not installed
	${INSTALL_DATA} ${WRKBUILD}/tools/ctestfw/libicutest.a ${PREFIX}/lib/
	${INSTALL_DATA} \
		${WRKBUILD}/tools/ctestfw/libicutest.so.${LIBicutest_VERSION} \
		 ${PREFIX}/lib/
# who needs those annoying symlinks ?
	find ${PREFIX}/lib -type l -name 'libicu*.so*' -exec rm '{}' \;

.include <bsd.port.mk>
