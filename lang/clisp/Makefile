# $OpenBSD: Makefile,v 1.43 2013/03/21 08:46:32 ajacoutot Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc sparc64

COMMENT =		ANSI Common Lisp implementation

DISTNAME=		clisp-2.48
REVISION =		5
CATEGORIES=		lang
HOMEPAGE=		http://clisp.cons.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext

LIB_DEPENDS =		devel/libsigsegv \
			devel/ffcall>=1.10p1 \
			devel/readline
WANTLIB =		avcall c callback m ncurses readline sigsegv

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=clisp/}
EXTRACT_SUFX=		.tar.bz2

USE_GMAKE=		Yes
USE_GROFF =		Yes

SEPARATE_BUILD=		Yes

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS=		--fsstnd=openbsd \
			--disable-mmap \
			--with-gettext \
			--mandir=${PREFIX}/man \
			--docdir=${PREFIX}/share/doc/clisp \
			--elispdir=${PREFIX}/share/emacs/site-lisp \
			--vimdir=${PREFIX}/share/doc/clisp \
			--srcdir=${WRKSRC} ${WRKBUILD}
CONFIGURE_ENV =		ac_cv_prog_DVIPDF=''
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/src/build-aux

.if ${MACHINE_ARCH} == "sparc64"
CFLAGS +=		-DSAFETY=2 -DNO_ASM -mcmodel=medany
.endif

.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--with-gmalloc
CFLAGS +=		-fno-pie -nopie
LDFLAGS +=		-nopie
.else
CONFIGURE_ARGS +=	--without-gmalloc
.endif

.include <bsd.port.mk>
