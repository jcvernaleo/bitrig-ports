# $OpenBSD: Makefile,v 1.71 2014/11/04 16:01:58 dcoppa Exp $

PORTROACH=	limit:^1\.2\.

COMMENT=	useful routines for C programming

DISTNAME=	glib-1.2.10
SHARED_LIBS +=	glib                 1.2      # .1.2
SHARED_LIBS +=	gmodule              1.2      # .1.2
SHARED_LIBS +=	gthread              1.2      # .1.2

REVISION =	6

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/glib/1.2/}

HOMEPAGE=	http://www.gtk.org/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		pthread

CFLAGS+= -fgnu89-inline

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV+= CC=cc

NO_TEST=	Yes

post-extract:
	@rm -f ${WRKSRC}/docs/glib.info*

.include <bsd.port.mk>
