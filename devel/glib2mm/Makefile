# $OpenBSD: Makefile,v 1.77 2014/10/10 12:52:53 ajacoutot Exp $

# g++3 chokes on the code
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT=	C++ interface for glib2

GNOME_PROJECT=	glibmm
GNOME_VERSION=	2.42.0
PKGNAME=	glib2mm-${GNOME_VERSION}
REVISION=	0

V=		2.4
SUBST_VARS=	V

SHARED_LIBS +=  glibmm_generate_extra_defs-2.4 13.0     # 4.0
SHARED_LIBS +=  glibmm-2.4           13.0     # 4.0
SHARED_LIBS +=  giomm-2.4            13.0     # 4.0

CATEGORIES=	devel
REVISION=	1

HOMEPAGE=	http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre
WANTLIB += pthread sigc-2.0 z
WANTLIB += c++ c++abi pthread

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libsigc++-2 \
		devel/glib2>=2.42.0

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build
CONFIGURE_ENV=	M4='m4 -g' \
		ac_cv_path_DOXYGEN=""
CONFIGURE_ARGS=	--enable-static

.include <bsd.port.mk>
