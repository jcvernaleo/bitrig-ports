#	$OpenBSD: Makefile,v 1.3 2013/03/11 11:07:37 espie Exp $
PKG_ARCH =		*

COMMENT =		everyone was wrong. monsters do exist.
V =			0.0.20090509
DISTNAME =		marathon-evil-${V}
REVISION =		0
HOMEPAGE =		http://bighouse.bungie.org/evil/

DISTFILES =		MarathonEvil.zip:5

## You may, however, freely distribute this adventure as a whole, unaltered,
## adventure to anyone and any place.
PERMIT_PACKAGE_CDROM =	not for sale
PERMIT_PACKAGE_FTP =	YES

INSTALL_LOC =		${PREFIX}/share/alephone
INSTALL_EVIL =		${INSTALL_LOC}/MarathonEVIL


do-install:
	@${INSTALL_DATA_DIR} ${INSTALL_EVIL}
	@cd ${WRKDIR}/"Marathon EVIL"/ && pax -rw . "${INSTALL_EVIL}"
	@${INSTALL_SCRIPT} ${FILESDIR}/marathon-evil.sh ${PREFIX}/bin/marathon-evil

NO_BUILD =		Yes
NO_TEST =		Yes

.include <bsd.port.mk>
