# $OpenBSD: Makefile,v 1.20 2014/11/12 02:35:29 juanfra Exp $

BROKEN-hppa =		segfault while racket compiles XFORMS (at xsrc)
BROKEN-mips64el =	sigbus while racket compiles XFORMS (at xsrc)
BROKEN-powerpc =	racket builds but does not pass the tests (with or without JIT)

SHARED_ONLY =		Yes
ONLY_FOR_ARCHS =	i386 amd64 hppa mips64el powerpc

COMMENT =		multi-paradigm programming language

V =			6.1.1
REVISION =		0
PKGNAME =		racket-$V
DISTNAME =		racket-$V-src-builtpkgs

CATEGORIES =		lang
HOMEPAGE =		http://racket-lang.org/

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://www.cs.utah.edu/plt/installers/${V}/ \
			http://mirror.racket-lang.org/installers/${V}/ \
			http://www.eecs.northwestern.edu/racket/${V}/ \
			http://mirror.informatik.uni-tuebingen.de/mirror/racket/${V}/ \
			http://racket.infogroep.be/${V}/ \
			http://pre-release.racket-lang.org/installers/ \
			http://pre.racket-lang.org/release/installers/ \
			http://pre.racket-lang.org/installers/ \
			https://www.cs.utah.edu/plt/snapshots/current/installers/ \
			http://plt.eecs.northwestern.edu/snapshots/current/installers/ \
			http://download.tuxfamily.org/jod/lang/racket/ \
			ftp://download.tuxfamily.org/jod/lang/racket/
EXTRACT_SUFX =		.tgz

MODULES +=		converters/libiconv

# http://docs.racket-lang.org/draw/libs.html
# http://docs.racket-lang.org/gui/libs.html
# Some deps are listed in the README, others in the doc and others
# are called by ffi.
LIB_DEPENDS =		databases/iodbc,-main \
			devel/libffi>=3.0.9p2 \
			devel/libunique
BUILD_DEPENDS =		devel/pango \
			graphics/jpeg
RUN_DEPENDS =		devel/desktop-file-utils

WANTLIB += c m pthread ffi
# Loaded using FFI
WANTLIB += GL X11 iodbc unique-1.0

WRKDIST =		${WRKDIR}/racket-$V
WRKSRC =		${WRKDIST}/src

# The tests are installed from raco as a package
NO_TEST =		Yes
SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-libffi \
			--enable-gracket \
			--enable-jit \
			--enable-foreign \
			--enable-float \
			--enable-docs \
			--enable-lt=${LIBTOOL}
# "backtrace" is expensive.
# http://article.gmane.org/gmane.comp.lang.racket.devel/6700
# "places" and "futures" require thread-local storage and atomic CAS
# http://article.gmane.org/gmane.comp.lang.racket.user/16723
CONFIGURE_ARGS +=	--disable-backtrace \
			--disable-places \
			--disable-futures

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LIBracket3m_MAJOR=${LIBracket3m_VERSION:R} \
			LIBracket3m_MINOR=${LIBracket3m_VERSION:E}

FLAVORS =		debug
FLAVOR ?=
.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	--disable-strip \
			--enable-noopt
.endif

post-install:
	@mv ${WRKINST}/etc/racket ${PREFIX}/share/examples

# Since 5.3.4 if __SSE_MATH__ is defined (C_COMPILER_USES_SSE) and
# MZ_TRY_EXTFLONUMS enabled, MZ_LONG_DOUBLE (extflonum) is turned on. Also
# C_COMPILER_USES_SSE turn on MZ_USE_JIT_SSE.
# "-msse -mfpmath=sse" required by extflonum on i386.
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
CONFIGURE_ENV +=	CFLAGS="${CFLAGS} -msse -mfpmath=sse"
CONFIGURE_ARGS +=	--enable-extflonum
.endif

.include <bsd.port.mk>
