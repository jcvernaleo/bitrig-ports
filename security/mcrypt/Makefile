# $OpenBSD: Makefile,v 1.29 2014/11/30 05:41:34 brad Exp $

COMMENT =	extendable encryption program that supports many ciphers

DISTNAME =		mcrypt-2.6.8
REVISION =		4
CATEGORIES =		security

HOMEPAGE =		http://mcrypt.sf.net/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c ltdl mcrypt mhash z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=mcrypt/}

USE_GMAKE =		Yes
USE_GROFF =		Yes
MODULES =		devel/gettext
LIB_DEPENDS =		security/libmcrypt \
			security/mhash \
			devel/libtool,-ltdl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS += 	${CONFIGURE_SHARED}
CONFIGURE_ARGS += 	--enable-static --with-catgets 
CONFIGURE_ENV +=  	CPPFLAGS="-I${LOCALBASE}/include" \
                	LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv -lltdl"

.include <bsd.port.mk>
