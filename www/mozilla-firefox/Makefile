# $OpenBSD: Makefile,v 1.262 2014/12/06 16:55:32 landry Exp $

COMMENT =	Mozilla web browser

# Don't forget to bump www/firefox-i18n after updates.

MOZILLA_VERSION =	34.0
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	firefox
MOZILLA_CODENAME =	browser
REVISION = 1

SO_VERSION =	52.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
MOZILLA_LIBS =	browsercomps mozalloc mozgnome xul

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes

# lots of logic in mozilla.port.mk
MODULES =	www/mozilla devel/gettext lang/python

MODPY_RUNDEP =	No

# necessary glue to build with the correct compiler after fx 17
MODULES +=		lang/clang
MODCLANG_ARCHS =	amd64
MODCLANG_LANGS =	c c++

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

CONFIGURE_STYLE =	autoconf no-autoheader

MODGNU_CONFIG_GUESS_DIRS =	${WRKDIST}/build/autoconf \
				${WRKDIST}/ipc/chromium/src/third_party/libevent \
				${WRKDIST}/js/src/ctypes/libffi \
				${WRKDIST}/memory/jemalloc/src \
				${WRKDIST}/modules/freetype2/builds/unix \
				${WRKDIST}/nsprpub/build/autoconf \
				${WRKDIST}/toolkit/crashreporter/google-breakpad/autotools

# XXX
CONFIGURE_ARGS +=	--without-intl-api

# relies on pulseaudio for sound and broken at runtime
CONFIGURE_ARGS +=	--disable-webrtc

# bug #1064665
LIB_DEPENDS +=	textproc/icu4c
CONFIGURE_ARGS += --with-system-icu
WANTLIB += icudata icui18n icuuc

CONFIGURE_ARGS +=	--enable-gstreamer=1.0 \
			--disable-pulseaudio

# libxul doesnt link directly with gst but dlopens it at runtime
# see content/media/gstreamer/GStreamerLoader.cpp
#LIB_DEPENDS +=	multimedia/gstreamer-0.10/plugins-base
#WANTLIB += gmodule-2.0 gstapp-0.10 gstbase-0.10 gstreamer-0.10
#WANTLIB += gstvideo-0.10 xml2
BUILD_DEPENDS +=	multimedia/gstreamer1/plugins-base
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-good

MOZILLA_AUTOCONF_DIRS +=	js/src

post-install:
	${SUBST_MAN} ${FILESDIR}/mozilla-firefox.1 \
		${PREFIX}/man/man1/mozilla-firefox.1
	cd ${PREFIX}/man/man1/ && ln -sf mozilla-firefox.1 firefox.1
	cd ${PREFIX}/bin/ && ln -sf firefox mozilla-firefox
	# install prefs
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/browser/defaults/preferences
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/browser/defaults/preferences/all-openbsd.js
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_DATA} ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/browser/icons/mozicon128.png \
		${PREFIX}/share/pixmaps/firefox.png

	# link default48.png to default.png to be used by default by non-icccm compliant wm
	ln ${PREFIX}/lib/firefox-${MOZILLA_VER}/browser/chrome/icons/default/default{48,}.png

.include <bsd.port.mk>
