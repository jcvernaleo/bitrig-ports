# $OpenBSD: Makefile,v 1.6 2014/10/22 14:10:46 pea Exp $

COMMENT=	programs to aid the PostgreSQL administrator

DISTNAME=	pg-toolbox-3
REVISION=	0
CATEGORIES=	databases sysutils

HOMEPAGE=	http://pg-toolbox.projects.postgresql.org/
REVISION=	0

# BSD / Zlib
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://pgfoundry.org/frs/download.php/1943/

RUN_DEPENDS=	databases/postgresql,-main

NO_TEST=	Yes

USE_GMAKE=	Yes

BINFILES=	pg_file2str.pl

post-install:
.for i in ${BINFILES}
	@cd ${PREFIX}/bin && mv ${i} `basename ${i} .pl`
.endfor

.include <bsd.port.mk>
