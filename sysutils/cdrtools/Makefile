# $OpenBSD: Makefile,v 1.22 2014/11/03 09:12:41 ratchov Exp $

COMMENT=		ISO 9660 filesystem and CD/DVD/BD creation tools

DISTNAME=		cdrtools-3.00
REVISION=		2
CATEGORIES=		sysutils
HOMEPAGE=		http://cdrtools.sourceforge.net/private/cdrtools.html

# mostly CDDL, some components GPL (see COPYING)
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c sndio

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cdrtools/}


BUILD_DEPENDS=		devel/m4
USE_GMAKE=		Yes

MAKE_ENV +=		MAKEPROG=${MAKE_PROGRAM}
MAKE_FLAGS =		GMAKE_NOWARN=true CC="${CC}" CC++="${CXX}" \
			LDCC="${CC}" LDCC++="${CXX}" \
			MKC++DEP="${CXX} -M" MKDEP="${CC} -M" \
			DYNLD="${CC}" DYNLDC++="${CXX}" \
			GCCOPTOPT="" RANLIB=ranlib AR=ar

NO_TEST=		Yes

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/autoconf

post-extract:
	cp -R ${FILESDIR}/* ${WRKSRC}

.if ${MACHINE} != "i386" || ${CC} != "cc"
do-configure:
	cd ${WRKSRC}/RULES && \
	    cp i386-bitrig-cc.rul ${MACHINE}-bitrig-${CC}.rul
.endif

pre-build:
	${SUBST_CMD} ${WRKSRC}/mkisofs/Makefile
	${SUBST_CMD} ${WRKSRC}/mkisofs/diag/isoinfo.mk

OBJ=	OBJ/${MACHINE_ARCH}-bitrig-${CC}

do-install:
	@cp ${WRKSRC}/mkisofs/mkisofs.8 ${WRKSRC}/mkisofs/mkisofs.1
.for i in cdda2wav cdrecord mkisofs readcd
	${INSTALL_PROGRAM} ${WRKBUILD}/$i/${OBJ}/$i ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/$i/$i.1 ${PREFIX}/man/man1
.endfor
.for i in devdump isodebug isodump isoinfo isovfy
	${INSTALL_PROGRAM} ${WRKBUILD}/mkisofs/diag/${OBJ}/$i ${PREFIX}/bin
.endfor
	${INSTALL_MAN} ${WRKSRC}/mkisofs/diag/isoinfo.8 \
	    ${PREFIX}/man/man1/isoinfo.1
.for i in devdump.1 isovfy.1
	cd ${PREFIX}/man/man1 && ln -s isoinfo.1 $i
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdrtools
	${INSTALL_DATA} ${WRKSRC}/README.OpenBSD ${PREFIX}/share/doc/cdrtools

.include <bsd.port.mk>
