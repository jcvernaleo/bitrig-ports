# $OpenBSD: Makefile,v 1.21 2013/10/03 16:37:17 dcoppa Exp $

BROKEN-sparc64 =	ICE in scipy/optimize/minpack/qrsolv.f:189
BROKEN-hppa =		ICE in scipy/special/specfun/specfun.f:5151
BROKEN-alpha =		ICE in scipy/optimize/minpack/lmstr.f:462

COMMENT=		maths, science and engineering modules for Python

MODPY_EGG_VERSION=	0.10.0
DISTNAME=		scipy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1
CATEGORIES=		math devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += amd arpack blas lapack m umfpack util
WANTLIB += ${MODPY_WANTLIB} ${MODFORTRAN_WANTLIB}
WANTLIB += c++ c++abi pthread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=scipy/}
HOMEPAGE=		http://numeric.scipy.org/

MODULES=		lang/python fortran
MODFORTRAN_COMPILER =	g77
MODPY_SETUPTOOLS=       Yes
MODPY_SETUP=            setupegg.py

BUILD_DEPENDS=		${RUN_DEPENDS} \
			${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=		math/umfpack \
			math/arpack \
			math/amd \
			${MODFORTRAN_LIB_DEPENDS}
RUN_DEPENDS=		math/py-numpy>=1.6.0 \
			devel/swig

TEST_DEPENDS=	devel/py-nose

MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/amd -I${LOCALBASE}/include"
MAKE_ENV+=		LDFLAGS="-shared -L${LOCALBASE}/lib -pthread -lutil"

do-test: fake
	${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} -c \
		'import scipy ; scipy.test("full")'

.include <bsd.port.mk>
