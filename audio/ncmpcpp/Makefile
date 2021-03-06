# $OpenBSD: Makefile,v 1.24 2014/12/14 10:43:19 dcoppa Exp $

COMMENT =		ncurses mpd client inspired by ncmpc

DISTNAME =		ncmpcpp-0.6.2

EXTRACT_SUFX =		.tar.bz2

CATEGORIES =		audio

HOMEPAGE =		http://ncmpcpp.rybczak.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}stable/

WANTLIB =		boost_filesystem-mt boost_locale-mt \
			boost_program_options-mt boost_regex-mt \
			boost_system-mt boost_thread-mt c crypto \
			curl idn m mpdclient ncursesw pthread \
			readline ssl tag z
WANTLIB +=		c++ c++abi

LIB_DEPENDS =		audio/libmpdclient>=2.4 \
			audio/taglib \
			devel/boost \
			net/curl

MODULES =		devel/gettext gcc4

MODGCC4_ARCHS =		i386 amd64 powerpc sparc64 alpha
MODGCC4_LANGS =		c++

FAKE_FLAGS =		docdir="${PREFIX}/share/examples/ncmpcpp/"

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--enable-clock \
			--enable-outputs \
			--enable-unicode \
			--with-curl \
			--with-taglib \
			--without-fftw

CONFIGURE_ENV =		CPPFLAGS="-pthread"

NO_TEST =		Yes

.include <bsd.port.mk>
