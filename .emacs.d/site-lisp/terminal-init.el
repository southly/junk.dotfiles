;;;
;;;
(setq browse-url-generic-program "open")
(setq browse-url-netscape-program "open")
;;;
;;;
(require 'cl)

(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/w3m/")
(require 'w3m-load)
(setq browse-url-browser-function 'w3m-browse-url)

(require 'install-elisp)
(setq install-elisp-repository-directory "~/.emacs.d/site-lisp/")

(require 'autoinsert)

(require 'auto-save-buffers)
(run-with-idle-timer 2.0 t 'auto-save-buffers)

(defconst *dmacro-key* [?\C-:] "dmacro key")
(global-set-key *dmacro-key* 'dmacro-exec)
(autoload 'dmacro-exec "dmacro" nil t)

(require 'jaspace)
(setq jaspace-alternate-eol-string "↓\n")
(setq jaspace-highlight-tabs t)

(require 'kill-summary)
(define-key kill-summary-mode-map [?\C-m] 'kill-summary-yank-and-quit)
(global-set-key [?\M-y] 'kill-summary)

(require 'session)
(add-hook 'after-init-hook 'session-initialize)

(load-library "tails-history")
(mapc #'(lambda (keymap)
          (define-key keymap [?\C-p] 'tails-previous-history-element)
          (define-key keymap [?\C-n] 'tails-next-history-element))
      (list minibuffer-local-map 
            minibuffer-local-completion-map 
            minibuffer-local-must-match-map
            minibuffer-local-ns-map))

;;; SLIME 2009-02-27
;;;
(add-to-list 'load-path "~/.emacs.d/site-lisp/slime/")
(require 'slime)
(slime-setup '(slime-fancy
               ; bridge
               ; inferior-slime
               slime-asdf
               slime-banner
               ; slime-clipboard
               ; slime-enclosing-context
               slime-fuzzy
               slime-indentation
               ; slime-motd
               ; slime-mrepl
               ; slime-parse
               slime-sbcl-exts
               ; slime-scheme
               ; slime-tramp
               ; slime-typeout-frame
               ))
(setq slime-lisp-implementations '((sbcl  ("sbcl") :coding-system utf-8-unix)
                                   (clisp ("clisp" "-K" "full" "-E" "UTF-8") :coding-system utf-8-unix)
                                   (ccl   ("~/local/share/common-lisp/ccl/dx86cl" "-K" "utf-8") :coding-system utf-8-unix)
                                   (ecl   ("ecl") :coding-system utf-8-unix)
                                   (cmucl ("cmucl") :coding-system nil)))
(setq slime-default-lisp 'sbcl)
(setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
(global-set-key [?\C-c ?s] 'slime-selector)
(setq slime-net-coding-system 'utf-8-unix)
(setq common-lisp-hyperspec-root "/opt/local/share/doc/lisp/HyperSpec-7-0/HyperSpec/")
