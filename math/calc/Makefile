# $OpenBSD: Makefile,v 1.20 2013/03/11 11:23:54 espie Exp $

COMMENT=	C-style arbitrary precision calculator

DISTNAME=	calc-2.11.7
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=calc/} \
		ftp://ftp.uu.net/pub/calc/ \
		ftp://reality.sgi.com/chongo/src/calc/

REVISION=	1

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c curses readline
LIB_DEPENDS=		devel/readline

HOMEPAGE=	http://www.isthe.com/chongo/tech/comp/calc

MAKE_FLAGS=\
	BINDIR='$${DESTDIR}${PREFIX}/bin' \
	LIBDIR='$${DESTDIR}${PREFIX}/lib' \
	INCDIR='$${DESTDIR}${PREFIX}/include' \
	MANDIR='$${DESTDIR}${PREFIX}/man/man1' \
	CALC_SHAREDIR='$${DESTDIR}${PREFIX}/share/calc' \
	USE_READLINE='-DUSE_READLINE' \
	READLINE_LIB='-lreadline -lcurses' \
	LCC=${CC} \
	LDFLAGS='${LDFLAGS} -L${LOCALBASE}/lib' \
	CFLAGS='${CFLAGS} -I${LOCALBASE}/include -DCALC_SRC $${CCWARN}'
USE_GROFF =	Yes

TEST_TARGET=	check

.include <bsd.port.mk>
