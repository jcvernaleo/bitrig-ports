# $OpenBSD: Makefile,v 1.17 2014/12/11 08:10:51 daniel Exp $

COMMENT =	portable release of Doom, Heretic, Hexen, and Strife
V =		2.1.0
DISTNAME =	chocolate-doom-${V}
CATEGORIES =	games x11

HOMEPAGE =	http://www.chocolate-doom.org/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += SDL SDL_mixer SDL_net c m png pthread samplerate z

LIB_DEPENDS =	devel/sdl-mixer \
		devel/sdl-net \
		audio/libsamplerate \
		graphics/png

MASTER_SITES =	http://www.chocolate-doom.org/downloads/${V}/

RUN_DEPENDS =	devel/desktop-file-utils


CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

# we don't need to require python to build
CONFIGURE_ENV +=	HAVE_PYTHON=false

# set correct program directory
MAKE_FLAGS =	execgamesdir="${TRUEPREFIX}/bin"

MAN_5 =		chocolate-doom.cfg default.cfg \
		chocolate-heretic.cfg heretic.cfg \
		chocolate-hexen.cfg hexen.cfg \
		chocolate-strife.cfg strife.cfg
MAN_6 =		chocolate-doom chocolate-server chocolate-setup \
		chocolate-heretic chocolate-hexen chocolate-strife

post-extract:
	# set correct data directory
	@perl -pi -e "s,/usr/share/games/doom,${TRUEPREFIX}/share/doom," \
		${WRKSRC}/src/d_iwad.c

post-install:
	# Data files get installed to this directory.
	${INSTALL_DATA_DIR} ${PREFIX}/share/doom/
.for m in ${MAN_5}
	${INSTALL_MAN} ${WRKBUILD}/man/$m.5 ${PREFIX}/man/man5/
.endfor
.for m in ${MAN_6}
	${INSTALL_MAN} ${WRKBUILD}/man/$m.6 ${PREFIX}/man/man6/
.endfor

.include <bsd.port.mk>
