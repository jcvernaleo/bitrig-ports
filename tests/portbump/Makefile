# $OpenBSD: Makefile,v 1.3 2014/09/30 16:56:55 zhuk Exp $

# To add a test named ${testname}:
#  1) Create test port directory with ${testname} name.
#  2) Create the ${testname}.sample containing the desired result
#     after bumping the test Makefile.
#  3) Add the test to REGRESS_TARGETS.

# user-customizeable
REGRESS_TARGETS ?=	t1 t2 t3
PORTBUMP ?=		${PORTSDIR}/infrastructure/bin/portbump
PORTBUMP_ARGS ?=
DIFF ?=			diff -u

# test-specific parameters
TEST_t2_ARGS =		,-main -fpm

# define tests
.for _t in ${REGRESS_TARGETS}
TEST_${_t}_DIR =	${.CURDIR}/${_t}
TEST_${_t}_SAMPLE =	${.CURDIR}/${_t}.sample
TEST_${_t}_RESULT =	${.OBJDIR}/${_t}.result

TEST_${_t}_ARGS ?=
CLEANFILES +=		${TEST_${_t}_RESULT}

${_t}:
	@echo '=> ${_t}'
	cd ${TEST_${_t}_DIR}; ${PORTBUMP} -o ${TEST_${_t}_RESULT} ${TEST_${_t}_ARGS}
	@${DIFF} ${TEST_${_t}_SAMPLE} ${TEST_${_t}_RESULT}

.PHONY: ${_t}
.endfor

.include <bsd.regress.mk>
