# $OpenBSD: Makefile,v 1.9 2014/09/27 17:50:28 jasper Exp $

COMMENT=		Verilog simulation and synthesis tool

V=			0.9.7
DISTNAME=		verilog-$V
PKGNAME=		iverilog-$V
CATEGORIES=		lang devel

REVISION=		2

HOMEPAGE=		http://www.icarus.com/eda/verilog/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp.icarus.com/pub/eda/verilog/v${V:R}/

WANTLIB += c m readline termcap z
WANTLIB += c++ c++abi pthread
LIB_DEPENDS=		devel/readline

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/bison
YACC=			bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-suffix
CFLAGS+=		-fPIC

VVP_DOCS=		README.txt opcodes.txt
DOC_DIR=		${PREFIX}/share/doc/iverilog

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}/{ivlpp,vvp}
	${INSTALL_DATA} ${WRKSRC}/*.txt ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/vvp/{README,opcodes}.txt ${DOC_DIR}/vvp/
	${INSTALL_DATA} ${WRKSRC}/ivlpp/ivlpp.txt ${DOC_DIR}/ivlpp/
.include <bsd.port.mk>
