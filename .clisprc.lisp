;;;; -*- Mode: LISP; Syntax: COMMON-LISP; indent-tabs-mode: nil -*-
;;;  $Id$
(setf custom:*clhs-root-default* "file:///opt/local/share/doc/lisp/HyperSpec-7-0/HyperSpec/")
(setf custom:*impnotes-root-default* "file:///Users/southly/local/share/common-lisp/clisp-2.43/doc/html/")

(compile-file (merge-pathnames "local/share/common-lisp/source/asdf/asdf.lisp" (user-homedir-pathname)))
(load (merge-pathnames "local/share/common-lisp/source/asdf/asdf" (user-homedir-pathname)))
(push (merge-pathnames "local/share/common-lisp/systems/" (user-homedir-pathname)) asdf:*central-registry*)
(compile-file (merge-pathnames "local/share/common-lisp/source/asdf-addons/asdf-cache.lisp" (user-homedir-pathname)))
(load (merge-pathnames "local/share/common-lisp/source/asdf-addons/asdf-cache" (user-homedir-pathname)))
(setf asdf-cache:*asdf-cache* (merge-pathnames "local/var/cache/common-lisp/" (user-homedir-pathname)))

(asdf:oos 'asdf:load-op :swank)
(asdf:oos 'asdf:load-op :jp)
(asdf:oos 'asdf:load-op :cl-who)