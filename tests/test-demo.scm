;;; -*- coding: utf-8-unix  -*-
;;;
;;;Part of: MMUX Cyclone Checks
;;;Contents: test program for demo
;;;Date: May 16, 2020
;;;
;;;Abstract
;;;
;;;	This program is a demo of the features.
;;;
;;;Copyright (C) 2020 Marco Maggi <mrc.mgg@gmail.com>
;;;
;;;Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
;;;associated documentation files  (the ``Software''), to deal in the  Software without restriction,
;;;including  without limitation  the  rights  to use,  copy,  modify,  merge, publish,  distribute,
;;;sublicense, and/or  sell copies of the  Software, and to permit  persons to whom the  Software is
;;;furnished to do so, subject to the following conditions:
;;;
;;;The  above copyright  notice  and this  permission  notice shall  be included  in  all copies  or
;;;substantial portions of the Software.
;;;
;;;THE SOFTWARE IS PROVIDED  ``AS IS'', WITHOUT WARRANTY OF ANY KIND,  EXPRESS OR IMPLIED, INCLUDING
;;;BUT  NOT LIMITED  TO THE  WARRANTIES OF  MERCHANTABILITY, FITNESS  FOR A  PARTICULAR PURPOSE  AND
;;;NONINFRINGEMENT. IN  NO EVENT SHALL  THE AUTHORS  OR COPYRIGHT HOLDERS  BE LIABLE FOR  ANY CLAIM,
;;;DAMAGES OR OTHER  LIABILITY, WHETHER IN AN  ACTION OF CONTRACT, TORT OR  OTHERWISE, ARISING FROM,
;;;OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
;;;


;;;; units and module header

(import (scheme base)
	(mmux.cyclone.checks))

(check-set-mode! 'report-failed)
(check-display "*** testing demo\n")


;;;; stuff

(parameterize ((check-test-name		'alpha))

  (check
      (+ 1 2)
    => 3)

  (values))

(parameterize ((check-test-name		'beta))

  (check
      (+ 1 2)
    => 3)

  (values))


;;;; done

(check-report)

;;; end of file
