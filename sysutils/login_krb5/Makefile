# $OpenBSD: Makefile,v 1.2 2014/12/10 19:03:06 naddy Exp $

# needs mode 4555 to access passwd(5) and the Kerberos keytab

COMMENT=		authentication provider for KerberosV

DISTNAME=		login_krb5-5.7

CATEGORIES=		sysutils

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c com_err crypto pthread util

MASTER_SITES=		https://distfiles.bsdfrog.org/

MODULES=		security/heimdal

NO_TEST=		Yes

MAKE_FLAGS=		LDFLAGS="-Wl,-rpath=/usr/local/heimdal/lib"

FAKE_FLAGS=		BINDIR=${PREFIX}/libexec/auth \
			MANDIR=${PREFIX}/man/man

LDFLAGS=		-Wl,-rpath=${LOCALBASE}/heimdal/lib

.include <bsd.port.mk>
