# $OpenBSD: clang.port.mk,v 1.13 2014/12/12 21:52:26 brad Exp $

MODCLANG_VERSION=	3.5.0

MODCLANG_ARCHS ?=
MODCLANG_LANGS ?=

.if !${MODCLANG_LANGS:L:Mc}
# Always include support for this
MODCLANG_LANGS += c
.endif

_MODCLANG_OKAY = c c++
.for _l in ${MODCLANG_LANGS:L}
.  if !${_MODCLANG_OKAY:M${_l}}
ERRORS += "Fatal: unknown language ${_l}"
.  endif
.endfor

_MODCLANG_ARCH_USES = No

.if ${MODCLANG_ARCHS:L} != ""
.  for _i in ${MODCLANG_ARCHS}
.    if !empty(MACHINE_ARCH:M${_i})
_MODCLANG_ARCH_USES = Yes
.    endif
.  endfor
.endif

_MODCLANG_LINKS =
.if ${_MODCLANG_ARCH_USES:L} == "yes"

BITRIG_LLVM_VERSION=	3.4
.if ${MODCLANG_VERSION} == ${BITRIG_LLVM_VERSION}
#3.4 comes with comp, not from ports
#BUILD_DEPENDS += devel/llvm
.else
BUILD_DEPENDS += devel/llvm>=${MODCLANG_VERSION}
.endif
_MODCLANG_LINKS = clang gcc clang cc

.  if ${MODCLANG_LANGS:L:Mc++}
_MODCLANG_LINKS += clang++ g++ clang++ c++
.  endif
.endif

.if !empty(_MODCLANG_LINKS)
.  if "${USE_CCACHE:L}" == "yes" && "${NO_CCACHE:L}" != "yes"
.    for _src _dest in ${_MODCLANG_LINKS}
MODCLANG_post-patch +=	rm -f ${WRKDIR}/bin/${_dest};
MODCLANG_post-patch +=	echo '\#!/bin/sh' >${WRKDIR}/bin/${_dest};
MODCLANG_post-patch +=	echo exec ccache ${USRBASE}/bin/${_src} \"\$$@\"
MODCLANG_post-patch +=	>>${WRKDIR}/bin/${_dest};
MODCLANG_post-patch +=	chmod +x ${WRKDIR}/bin/${_dest};
.    endfor
.  else
.    for _src _dest in ${_MODCLANG_LINKS}
MODCLANG_post-patch += ln -sf ${USRBASE}/bin/${_src} ${WRKDIR}/bin/${_dest};
.    endfor
.  endif
.endif

SUBST_VARS+=	MODCLANG_VERSION
