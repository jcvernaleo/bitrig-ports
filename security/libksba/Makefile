# $OpenBSD: Makefile,v 1.11 2014/12/16 10:05:27 pea Exp $

COMMENT = 	X.509 library

DISTNAME = 	libksba-1.3.2
CATEGORIES = 	security

SHARED_LIBS = 	ksba 0.2	#19

MASTER_SITES =	${MASTER_SITES_GNUPG:=libksba/}

HOMEPAGE = 	http://www.gnupg.org/related_software/libksba

# GPLv3
PERMIT_PACKAGE_CDROM = 	Yes

EXTRACT_SUFX = 		.tar.bz2

MODULES = 		devel/gettext

LIB_DEPENDS = 		security/libgpg-error
WANTLIB =		gpg-error>=1

CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

.include <bsd.port.mk>
