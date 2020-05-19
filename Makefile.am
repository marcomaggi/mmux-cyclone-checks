## Process this file with automake to produce Makefile.in

include meta/automake/cyclone-scheme-prelude.mk


#### documentation

MMUX_CYCLONE_DOCSTEM			= mmux-cyclone-checks

info_TEXINFOS				= doc/mmux-cyclone-checks.texi
doc_mmux_cyclone_checks_TEXINFOS	= doc/macros.texi


#### library build targets

MMUX_CYCLONE_LIBS_SRCS		=			\
	lib/mmux.cyclone.checks.version.sld		\
	lib/mmux.cyclone.checks.sld

MMUX_CYCLONE_LIBS_LIBS		=			\
	build-lib/mmux.cyclone.checks.version.so	\
	build-lib/mmux.cyclone.checks.so

MMUX_CYCLONE_LIBS_METAS		=			\
	build-lib/mmux.cyclone.checks.version.meta	\
	build-lib/mmux.cyclone.checks.meta

MMUX_CYCLONE_LIBS_OBJS		=			\
	build-lib/mmux.cyclone.checks.version.o		\
	build-lib/mmux.cyclone.checks.o

## --------------------------------------------------------------------

build-lib/mmux.cyclone.checks.version.so: 			\
		build-lib/mmux.cyclone.checks.version.sld	\
		$(MMUX_CYCLONE_LIBS_PREREQ)
	$(CYCLONE_COMPILE_LIBS_LIB) $(<)

build-lib/mmux.cyclone.checks.so: 				\
		build-lib/mmux.cyclone.checks.sld		\
		build-lib/mmux.cyclone.checks.version.so	\
		$(MMUX_CYCLONE_LIBS_PREREQ)
	$(CYCLONE_COMPILE_LIBS_LIB) $(<)


#### interface to "make check"
#
# Read "Parallel Test Harness" in the documentation of GNU Automake to
# understand how to use this interface for "make check".
#

MMUX_CYCLONE_CHECK_SRCS		=	\
	tests/test-version.scm		\
	tests/test-demo.scm

MMUX_CYCLONE_CHECK_PROGS	=	\
	build-tests/test-version.exe	\
	build-tests/test-demo.exe


#### common stuff

include meta/automake/cyclone-scheme-postlude.mk

### end of file
