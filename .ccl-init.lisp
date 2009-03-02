;;;; -*- Mode: LISP; Syntax: COMMON-LISP; indent-tabs-mode: nil -*-
;;;  $Id$
(compile-file (merge-pathnames "local/share/common-lisp/source/asdf/asdf.lisp" (user-homedir-pathname)))
(load (merge-pathnames "local/share/common-lisp/source/asdf/asdf" (user-homedir-pathname)))
(push (merge-pathnames "local/share/common-lisp/systems/" (user-homedir-pathname)) asdf:*central-registry*)
(compile-file (merge-pathnames "local/share/common-lisp/source/asdf-addons/asdf-cache.lisp" (user-homedir-pathname)))
(load (merge-pathnames "local/share/common-lisp/source/asdf-addons/asdf-cache" (user-homedir-pathname)))
(setf asdf-cache:*asdf-cache* (merge-pathnames "local/var/cache/common-lisp/" (user-homedir-pathname)))

(setf ccl:*default-external-format* (ccl:make-external-format :character-encoding :utf-8 :line-termination :unix)
      ccl:*default-file-character-encoding* :utf-8
      ccl:*default-socket-character-encoding* :utf-8)

(asdf:oos 'asdf:load-op :swank)
(asdf:oos 'asdf:load-op :jp)
(asdf:oos 'asdf:load-op :cl-who)