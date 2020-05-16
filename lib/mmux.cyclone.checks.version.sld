;;; -*- coding: utf-8-unix  -*-
;;;
;;;Part of: MMUX Cyclone Checks
;;;Contents: version functions
;;;Date: May 16, 2020
;;;
;;;Abstract
;;;
;;;	This unit defines version functions.
;;;
;;;Copyright (C) 2020 Marco Maggi <mrc.mgg@gmail.com>
;;;
;;;Permission to copy,  modify, distribute, and use this  work or a modified copy of  this work, for
;;;any purpose, is hereby granted, provided that the copy includes this copyright notice, and in the
;;;case of a  modified copy, also includes a  notice of modification.  This work is  provided as is,
;;;with no warranty of any kind.
;;;


;;;; units and module header

(define-library (mmux.cyclone.checks.version)
  (export mmux-cyclone-checks-package-major-version
	  mmux-cyclone-checks-package-minor-version
	  mmux-cyclone-checks-package-patch-level
	  mmux-cyclone-checks-package-prerelease-tag
	  mmux-cyclone-checks-package-build-metadata
	  mmux-cyclone-checks-package-version
	  mmux-cyclone-checks-package-semantic-version)
  (import (scheme base))
  (include "build-lib/config.scm")
  (begin


;;;; version functions

(define (mmux-cyclone-checks-package-major-version)	MMUX_PKG_MAJOR_VERSION)
(define (mmux-cyclone-checks-package-minor-version)	MMUX_PKG_MINOR_VERSION)
(define (mmux-cyclone-checks-package-patch-level)	MMUX_PKG_PATCH_LEVEL)
(define (mmux-cyclone-checks-package-prerelease-tag)	MMUX_PKG_PRERELEASE_TAG)
(define (mmux-cyclone-checks-package-build-metadata)	MMUX_PKG_BUILD_METADATA)
(define (mmux-cyclone-checks-package-version)		MMUX_PKG_VERSION)
(define (mmux-cyclone-checks-package-semantic-version)	MMUX_PKG_SEMANTIC_VERSION)


;;;; done

#| end of library |# ))

;;; end of file
;; Local Variables:
;; mode: scheme
;; End:
