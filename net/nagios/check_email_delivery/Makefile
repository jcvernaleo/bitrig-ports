# $OpenBSD: Makefile,v 1.15 2014/10/27 14:10:31 sthen Exp $

COMMENT=	Nagios plugin to check full email delivery loop (SMTP/IMAP)

DISTNAME=	check_email_delivery-0.7.1b
REVISION=	4
PORTROACH=	skipv:0.9.0
CATEGORIES=	net mail

HOMEPAGE=	http://buhacoff.net/software/check_email_delivery/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/archive/

PKG_ARCH=	*
NO_BUILD=	Yes
NO_TEST=	Yes
USE_GROFF =	Yes

RUN_DEPENDS=	converters/p5-DateManip \
		mail/p5-Email-Simple \
		mail/p5-Mail-IMAPClient \
		net/p5-Net-SMTP_auth \
		net/p5-Net-SMTP-SSL \
		net/p5-Net-SMTP-TLS-ButMaintained \
		security/p5-Authen-SASL \
		security/p5-IO-Socket-SSL \
		textproc/p5-Text-Template

do-configure:
	@${SUBST_CMD} ${WRKSRC}/check_email_delivery ${WRKSRC}/check_email_delivery_epn

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
# the ePN-compatible plugins are nearly identical to the normal ones,
# they just don't include the pod documentation; no point installing both
# versions.
.for i in check_email_delivery check_imap_receive check_imap_quota check_smtp_send imap_ssl_cert
	${INSTALL_SCRIPT} ${WRKSRC}/$i_epn ${PREFIX}/libexec/nagios/$i
	pod2man ${WRKSRC}/$i ${PREFIX}/man/man3p/$i.3p
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/check_email_delivery
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/check_email_delivery

.include <bsd.port.mk>
