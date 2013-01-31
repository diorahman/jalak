AC_INIT([jalak], [0.0.1], [dio@rockybars.com], [jalak])
AC_CONFIG_SRCDIR([Makefile.am])
AC_CONFIG_HEADERS(config.h)
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([build-aux])
AM_INIT_AUTOMAKE([dist-bzip2 foreign subdir-objects])
AM_MAINTAINER_MODE

AC_PROG_CC
LT_PREREQ([2.2.6])
LT_INIT([disable-static])

AC_PATH_PROG(VALAC, valac, valac)

GLIB_REQUIRED=2.32

AC_DEFINE_UNQUOTED(PUBLICDIR, "$PWD/public", [Static assests root directory])
AC_SUBST(PUBLICDIR)

PKG_PROG_PKG_CONFIG([0.24])
PKG_CHECK_MODULES(JALAK, glib-2.0 >= $GLIB_REQUIRED
		  gmodule-2.0 >= $GLIB_REQUIRED
		  gobject-2.0 >= $GLIB_REQUIRED
		  gio-2.0 >= $GLIB_REQUIRED
		  webkit-1.0
		  libpeas-1.0
)

AC_CONFIG_FILES([Makefile])

AC_OUTPUT
