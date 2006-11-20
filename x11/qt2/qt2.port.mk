# $OpenBSD: qt2.port.mk,v 1.3 2006/11/20 12:02:29 espie Exp $

# This fragment uses MODQT_* variables to make it easier to substitute
# qt1/qt2/qt3 in a port.

MODQT_LIB_DEPENDS=lib/qt2/qt.>=2::x11/qt2
LIB_DEPENDS+=	${MODQT_LIB_DEPENDS}

MODQT_LIBDIR=	${LOCALBASE}/lib/qt2
MODQT_INCDIR=	${LOCALBASE}/include/X11/qt2
MODQT_MOC=	${LOCALBASE}/bin/moc2
MODQT_CONFIGURE_ARGS=	--with-qt-includes=${MODQT_INCDIR} \
			--with-qt-libraries=${MODQT_LIBDIR}
_MODQT_SETUP=	MOC=${MODQT_MOC} \
		MODQT_INCDIR=${MODQT_INCDIR} \
		MODQT_LIBDIR=${MODQT_LIBDIR}

CONFIGURE_ENV+=	${_MODQT_SETUP}
MAKE_ENV+=	${_MODQT_SETUP}
MAKE_FLAGS+=	${_MODQT_SETUP}
