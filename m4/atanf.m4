# atanf.m4 serial 2
dnl Copyright (C) 2011-2013 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_FUNC_ATANF],
[
  AC_REQUIRE([gl_MATH_H_DEFAULTS])
  AC_REQUIRE([gl_FUNC_ATAN])

  dnl Persuade glibc <math.h> to declare atanf().
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])

  dnl Test whether atanf() exists. Assume that atanf(), if it exists, is
  dnl defined in the same library as atan().
  save_LIBS="$LIBS"
  LIBS="$LIBS $ATAN_LIBM"
  AC_CHECK_FUNCS([atanf])
  LIBS="$save_LIBS"
  if test $ac_cv_func_atanf = yes; then
    ATANF_LIBM="$ATAN_LIBM"
  else
    HAVE_ATANF=0
    ATANF_LIBM="$ATAN_LIBM"
  fi
  AC_SUBST([ATANF_LIBM])
])
