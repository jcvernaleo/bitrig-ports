# $OpenBSD: Makefile,v 1.82 2014/12/16 11:32:11 sthen Exp $

COMMENT=		download/stream programmes from BBC iPlayer

V=			2.90pl2
DISTNAME=		get_iplayer-$V
GH_ACCOUNT=		get-iplayer
GH_PROJECT=		get_iplayer
GH_COMMIT=		dd05178b5ee435e5d8d8cbe2ffc4e55412dce66c
CATEGORIES=		multimedia

# http://git.infradead.org/get_iplayer.git
HOMEPAGE=		http://www.infradead.org/get_iplayer/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

#MASTER_SITES=		ftp://ftp.infradead.org/pub/get_iplayer/

RUN_DEPENDS=		audio/id3lib \
			audio/p5-MP3-Tag \
			multimedia/atomicparsley \
			net/rtmpdump>=2.4 \
			textproc/p5-XML-Simple \
			www/p5-HTML-Parser>=3.71 \
			www/p5-LWP-Protocol-https \
			www/p5-libwww>=6.0

BUILD_DEPENDS=		${RUN_DEPENDS}

NO_TEST=		Yes
PKG_ARCH=		*

pre-configure:
	${SUBST_CMD} ${WRKSRC}/get_iplayer

do-build:
	-cd ${WRKSRC}; env -i HOME=${WRKSRC} ./get_iplayer --manpage get_iplayer.1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/get_iplayer/plugins
	${SUBST_DATA} -m 644 \
	   ${FILESDIR}/options.sample ${PREFIX}/share/get_iplayer/options.sample
	${INSTALL_SCRIPT} ${WRKSRC}/get_iplayer ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/plugins/* \
	    ${PREFIX}/share/get_iplayer/plugins
	${INSTALL_MAN} ${WRKSRC}/get_iplayer.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
