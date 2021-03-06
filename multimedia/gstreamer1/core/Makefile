# $OpenBSD: Makefile,v 1.22 2014/11/09 14:46:04 ajacoutot Exp $

COMMENT=		framework for streaming media

DISTNAME=		gstreamer-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-${V}

SHARED_LIBS +=  gstreamer-1.0        1.1      # 404.0
SHARED_LIBS +=  gstbase-1.0          1.1      # 404.0
SHARED_LIBS +=  gstcontroller-1.0    1.1      # 404.0
SHARED_LIBS +=  gstnet-1.0           1.1      # 404.0
SHARED_LIBS +=  gstcheck-1.0         1.1      # 404.0

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre
WANTLIB += pthread z

MASTER_SITES=		${MASTER_SITE_GST:=gstreamer/}

BUILD_DEPENDS=		devel/bison \
			devel/flex \
			devel/gobject-introspection

LIB_DEPENDS=		devel/glib2

CONFIGURE_ENV +=	FLEX_PATH=${LOCALBASE}/bin/gflex
# do not pick-up gmp nor gdl: for now, it is only used by
# tests/check/gst (which is not built) but better safe than sorry
CONFIGURE_ENV +=	ac_cv_lib_gmp___gmpz_init_set_d=no \
			ac_cv_lib_gsl_gsl_rng_uniform_int=no

# XXX our bison(1) is in fact a dinosaur
post-extract:
	perl -pi -e 's,bison_min_version=2.4,bison_min_version=2.3,,' \
		${WRKSRC}/common/m4/gst-parser.m4
	cp ${FILESDIR}/grammar.tab.{c,h} ${WRKSRC}/gst/parse

.include <bsd.port.mk>
