# $OpenBSD: Makefile,v 1.32 2014/10/25 14:29:24 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT-main =		bundle of plugins for gmpc
COMMENT-wikipedia =	wikipedia plugin for gmpc

VERSION =	11.8.16
DISTNAME =	gmpc-plugins-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-wikipedia =	gmpc-wikipedia-${VERSION}
REVISION-main =		6
REVISION-wikipedia =	8

CATEGORIES =	audio

HOMEPAGE =	http://gmpclient.org/plugins
MASTER_SITES =	http://www.musicpd.org/download/gmpc-plugins/${VERSION}/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

# XXX give it a chance to build on systems where webkit is not built
MULTI_PACKAGES =	-main -wikipedia
ONLY_FOR_ARCHS-wikipedia = alpha i386 powerpc amd64 hppa sparc64

.include <bsd.port.arch.mk>
.if !${BUILD_PACKAGES:M-wikipedia}
CONFIGURE_ARGS+=	--disable-wikipedia
.endif

MODULES =	devel/gettext \
		textproc/intltool

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			audio/taglib \
			x11/dbus-glib
WANTLIB-main = ${WANTLIB} dbus-1 tag tag_c dbus-glib-1 pthread
WANTLIB-main += avahi-client avahi-common avahi-glib

LIB_DEPENDS-wikipedia =	${LIB_DEPENDS} \
			www/webkit
WANTLIB-wikipedia =	${WANTLIB} \
			ICE SM Xt enchant gstapp-1.0 gstbase-1.0 icui18n \
			gstpbutils-1.0 gstreamer-1.0 gstvideo-1.0 orc-0.4 \
			jpeg soup-2.4 webkitgtk-1.0 xslt javascriptcoregtk-1.0 dbus-1 \
			gstaudio-1.0 gstfft-1.0 pthread GL \
			gbm gcrypt gpg-error gsttag-1.0 harfbuzz-icu \
			icudata icuuc secret-1 webp EGL

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m mpd pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs sqlite3 xcb
WANTLIB += xcb-render xcb-shm xml2 z ffi harfbuzz graphite2 lzma
WANTLIB += c++ c++abi

RUN_DEPENDS =	audio/gmpc>=${VERSION} \
		audio/vorbis-tools

BUILD_DEPENDS =	${RUN_DEPENDS} \
		x11/gob2
USE_GMAKE =	Yes

CONFIGURE_STYLE =gnu
CONFIGURE_ARGS+=--disable-mserver \
		--disable-mmkeys \
		--disable-lirc

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

MODGNU_CONFIG_GUESS_DIRS = \
	${WRKSRC}/gmpc-shout \
	${WRKSRC}/gmpc-mmkeys \
	${WRKSRC}/gmpc-awn \
	${WRKSRC}/gmpc-avahi \
	${WRKSRC}/gmpc-magnatune \
	${WRKSRC}/gmpc-alarm \
	${WRKSRC}/gmpc-albumview \
	${WRKSRC}/gmpc-lyrics \
	${WRKSRC}/gmpc-wikipedia \
	${WRKSRC}/gmpc-tagedit \
	${WRKSRC}/gmpc-jamendo \
	${WRKSRC}/gmpc-lyricwiki

.include <bsd.port.mk>
