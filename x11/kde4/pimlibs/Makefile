# $OpenBSD: Makefile,v 1.32 2014/11/01 21:09:46 zhuk Exp $

COMMENT =	libraries for KDE PIM services
DISTNAME =	kdepimlibs-${MODKDE4_VERSION}
REVISION =	0

DPB_PROPERTIES =	parallel

SHARED_LIBS =	kabc                 53.0      # .4.0
SHARED_LIBS +=	kabc_file_core       53.0      # .4.0
SHARED_LIBS +=	kalarmcal	     53.0      # 2.7
SHARED_LIBS +=	kcal                 53.0      # .4.0
SHARED_LIBS +=	kldap                53.0      # .4.0
SHARED_LIBS +=	kmime                53.0      # .4.0
SHARED_LIBS +=	kresources           53.0      # .4.0
SHARED_LIBS +=	ktnef                53.0      # .4.0
SHARED_LIBS +=	kxmlrpcclient        53.0      # .4.0
SHARED_LIBS +=	syndication          53.0      # .1.0
SHARED_LIBS +=	gpgme++              51.0      # .1.0
SHARED_LIBS +=	gpgme++-pthread      51.0      # .1.0
SHARED_LIBS +=	kblog                53.0      # .4.0
SHARED_LIBS +=	kimap                53.0      # .4.0
SHARED_LIBS +=	kpimidentities       53.0      # .4.0
SHARED_LIBS +=	kpimutils            53.0      # .4.0
SHARED_LIBS +=	mailtransport        53.0      # .4.0
SHARED_LIBS +=	qgpgme               53.0      # .1.0
SHARED_LIBS +=	akonadi-contact	     53.0      # .4.4
SHARED_LIBS +=	akonadi-kabc	     53.0      # .4.4
SHARED_LIBS +=	akonadi-kcal	     53.0      # .4.4
SHARED_LIBS +=	akonadi-kde	     53.0      # .4.4
SHARED_LIBS +=	akonadi-kmime	     53.0      # .4.4
SHARED_LIBS +=	akonadi-notes	     53.0      # 4.7
SHARED_LIBS +=	kholidays	     53.0      # .4.4
SHARED_LIBS +=	kontactinterface     53.0      # .4.4
SHARED_LIBS +=	kpimtextedit	     53.0      # .4.4
SHARED_LIBS +=	microblog	     53.0      # .4.4

SHARED_LIBS +=  akonadi-calendar	53.0 # 4.7
SHARED_LIBS +=  kcalcore		53.0 # 4.7
SHARED_LIBS +=  kcalutils		53.0 # 4.7
SHARED_LIBS +=  kmbox			53.0 # 4.7

SHARED_LIBS +=  akonadi-socialutils	53.0 # 4.10

SHARED_LIBS +=	akonadi-xml		1.0  # 4.13

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtTest lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kemoticons
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB += akonadiprotocolinternals assuan uuid gpg-error gpgme
WANTLIB += gpgme-pthread ical icalss lber ldap prison qjson sasl2
WANTLIB += soprano xml2

MODULES =	devel/gettext multimedia/phonon

MODKDE4_USE =	libs

BUILD_DEPENDS =	devel/boost \
		misc/shared-mime-info \
		misc/shared-desktop-ontologies>=0.10

RUN_DEPENDS =	misc/shared-mime-info \
		misc/shared-desktop-ontologies>=0.10

LIB_DEPENDS =	databases/openldap \
		devel/qjson \
		graphics/prison \
		productivity/akonadi>=${MIN_AKONADI_VERSION} \
		security/cyrus-sasl2 \
		security/gpgme>=0.4.5 \
		sysutils/e2fsprogs>=1.42.7 \
		textproc/libical \
		textproc/libxml

TEST_IS_INTERACTIVE =	X11

post-extract:
	cp ${FILESDIR}/*.cmake ${WRKDIST}/cmake/modules

.include <bsd.port.mk>
