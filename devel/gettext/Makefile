# $OpenBSD: Makefile,v 1.73 2014/10/20 18:34:38 naddy Exp $

COMMENT=	GNU gettext

DISTNAME=	gettext-0.19.3
SHARED_LIBS +=  intl                 6.0      # 9.2
SHARED_LIBS +=  asprintf             1.1      # unknown
SHARED_LIBS +=  gettextlib           4.0      # unknown
SHARED_LIBS +=  gettextsrc           4.0      # unknown
SHARED_LIBS +=  gettextpo            6.0      # 5.2

CATEGORIES=	devel
# DPB: parallel-safe, not worth it. Too much time in configure

MASTER_SITES=	${MASTER_SITE_GNU:=gettext/}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.gnu.org/software/gettext/

# LGPLv2.1, GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	converters/libiconv
WANTLIB=	c expat m ncurses
WANTLIB+=	c++ c++abi pthread

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-csharp \
		--disable-java \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-included-gettext \
		--with-included-glib \
		--with-included-libcroco \
		--with-included-libunistring \
		--with-included-libxml \
		--without-emacs \
		--without-git

CONFIGURE_ENV +=	gl_cv_have_weak=yes

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

EXTRA_LOCALES=	en he lv no

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	for f in start-po.el po-mode.el po-compat.el; do \
		${INSTALL_DATA} ${WRKSRC}/gettext-tools/misc/$$f \
			${PREFIX}/share/emacs/site-lisp; \
	done
	for l in ${EXTRA_LOCALES}; do \
		${INSTALL_DATA_DIR} ${PREFIX}/share/locale/$$l/LC_MESSAGES; \
	done

.include <bsd.port.mk>
