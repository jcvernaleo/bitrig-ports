# $OpenBSD: Makefile,v 1.2 2014/01/09 12:18:34 ajacoutot Exp $

COMMENT =		creates DjVu files from PDF files

V =			0.7.17
DISTNAME =		pdf2djvu_${V}
PKGNAME =		pdf2djvu-${V}
REVISION =		2

CATEGORIES =		graphics

HOMEPAGE =		http://jwilk.net/software/pdf2djvu

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GraphicsMagick GraphicsMagick++ c djvulibre m poppler
WANTLIB += pthread xml2 xslt z
WANTLIB += c++ c++abi

MASTER_SITES =		https://pdf2djvu.googlecode.com/files/

# https://code.google.com/p/pdf2djvu/wiki/BuildDepends
MODULES =		devel/gettext
LIB_DEPENDS =		graphics/GraphicsMagick \
			textproc/libxslt \
			print/poppler \
			graphics/djvulibre

# Weird things like "API specificationu[3]d for details"
USE_GROFF =		Yes

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-openmp \
			--disable-rpath
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
