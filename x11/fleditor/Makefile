# $OpenBSD: Makefile,v 1.26 2013/03/11 11:46:09 espie Exp $

COMMENT=		text editor widget for FLTK

V=			0.4.5
DISTNAME=		fl_editor-${V}
PKGNAME=		fleditor-${V}
REVISION=		6

SHARED_LIBS=		fleditor 3.0
CATEGORIES=		x11

HOMEPAGE=		http://www.robertk.com/source/

# LPGL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m
WANTLIB += c++ c++abi pthread

MASTER_SITES=		http://www.robertk.com/source/fl_editor/
EXTRACT_SUFX=		.tgz

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/fltk

TEST_TARGET=		test
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-fltk=${LOCALBASE}
MAKE_ENV=		LIBfleditor_VERSION=${LIBfleditor_VERSION}

WRKDIST=		${WRKDIR}/fl_editor

TEST_IS_INTERACTIVE= x11

post-patch:
	@rmdir ${WRKSRC}/obj

do-install:
	@${install_shared_frag}
	${INSTALL_DATA} ${WRKBUILD}/libfleditor.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/FL
	${INSTALL_DATA} ${WRKSRC}/FL/*.[Hh] ${PREFIX}/include/FL

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
install_shared_frag= :
.else
install_shared_frag=\
	${INSTALL_DATA} ${WRKBUILD}/libfleditor.so* ${PREFIX}/lib
.endif
