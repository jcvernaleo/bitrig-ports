# $OpenBSD: Makefile,v 1.241 2014/11/21 23:53:14 sthen Exp $

COMMENT=		general-purpose utility library

GNOME_PROJECT=		glib
GNOME_VERSION=		2.42.1
REVISION=		0
PKGNAME=		${DISTNAME:S/glib/glib2/}

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

SHARED_LIBS +=  glib-2.0             4200.0   # 4200.0
SHARED_LIBS +=  gmodule-2.0          4200.0   # 4200.0
SHARED_LIBS +=  gthread-2.0          4200.0   # 4200.0
SHARED_LIBS +=  gobject-2.0          4200.0   # 4200.0
SHARED_LIBS +=  gio-2.0              4200.0   # 4200.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c elf ffi pcre pthread z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_TOOLS +=	docbook

LIB_DEPENDS=		devel/pcre \
			devel/libelf \
			devel/libffi

# need X11 because DBus is used in the GDBus test cases;
# also requires bumped limits (stack >= 24576)
BUILD_DEPENDS +=	x11/dbus
TEST_IS_INTERACTIVE=	x11
TEST_DEPENDS=		devel/desktop-file-utils \
			x11/dbus

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-static \
			--with-pcre=system \
			--disable-fam \
			CFLAGS=-Wno-format-nonliteral

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mgcc3}
PATCH_LIST=	patch-* gcc3-*
.endif

pre-configure:
	perl -pi -e "s,/usr/local,${LOCALBASE},g;" \
		-e "s,/etc/xdg,${SYSCONFDIR}/xdg,g" \
		${WRKSRC}/glib/gutils.c \
		${WRKSRC}/gio/xdgmime/xdgmime.c
	perl -pi -e "s,/usr/share/locale,${LOCALBASE}/share/locale,g" \
		${WRKSRC}/glib/gcharset.c
	perl -pi -e "s,/usr/share/applications,${LOCALBASE}/share/applications,g" \
		${WRKSRC}/gio/tests/desktop-app-info.c
	perl -pi -e "s,/usr/share,${PREFIX}/share,g" \
		${WRKSRC}/docs/reference/gio/html/glib-compile-schemas.html \
		${WRKSRC}/docs/reference/gio/glib-compile-schemas.xml
	perl -pi -e "s,/var/lib/dbus,/var/db/dbus,g" \
		${WRKSRC}/gio/gdbusconnection.c \
		${WRKSRC}/gio/gdbusprivate.c \
		${WRKSRC}/po/*.po

.include <bsd.port.mk>
