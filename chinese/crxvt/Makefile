# $OpenBSD: Makefile,v 1.32 2014/12/05 12:50:09 naddy Exp $

COMMENT=	Chinese(Big5) VT100 terminal emulator for X

DISTNAME=       crxvt-2.10-2
PKGNAME=        zh-crxvt-2.10.2
REVISION=	4
CATEGORIES=     chinese

MASTER_SITES=	ftp://ftp.tw.openbsd.org/pub/OpenBSD/distfiles/

PERMIT_PACKAGE_CDROM=   no license
PERMIT_PACKAGE_FTP=     no license
PERMIT_DISTFILES_FTP=   no license

WANTLIB=		c X11

RUN_DEPENDS=	fonts/zh-taipeifonts

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS=	--os=OpenBSD --no-menu

post-configure:
	mv ${WRKSRC}/config.status ${WRKSRC}/config.status.orig
	sed -e '/OPT_CRXVT_CFONT/s/=.*/=-taipei-ming-medium-r-normal--16-160-75-75-c-160-big5-0/' ${WRKSRC}/config.status.orig > ${WRKSRC}/config.status

post-extract:
	mv ${WRKSRC}/script/os_def/FreeBSD ${WRKSRC}/script/os_def/FreeBSD.orig
	sed -e '/OS/s/=.*/=OpenBSD/' ${WRKSRC}/script/os_def/FreeBSD.orig > ${WRKSRC}/script/os_def/OpenBSD

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/crxvt ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/man/crxvt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
