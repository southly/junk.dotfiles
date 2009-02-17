(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/w3m/")
;; (setq load-path (cons "/opt/local/share/emacs/site-lisp/w3m/" load-path))
(require 'w3m-load)
(add-to-list 'load-path "~/.emacs.d/site-lisp")
;; (setq load-path (cons "~/.emacs.d/site-lisp" load-path))

(global-set-key [delete] 'delete-char)
(global-set-key "\C-h" 'backward-delete-char)

(put 'upcase-region 'disabled nil)

(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq truncate-partial-width-windows t)
(setq-default truncate-lines t)
(line-number-mode 1)
(column-number-mode 1)
(put 'narrow-to-region 'disabled nil)
;; (setq browse-url-browser-function 'browse-url-kde)
(setq browse-url-browser-function 'w3m-browse-url)
(setq user-full-name "NANRI")
(setq user-mail-address "southly@gmail.com")
(setq-default indent-tabs-mode nil) 
(when (eq window-system 'mac)
  (add-hook 'window-setup-hook
            (lambda ()
              (set-frame-parameter nil 'tool-bar-lines 0))))

(require 'session)
(add-hook 'after-init-hook 'session-initialize)

(global-set-key "\C-x\C-b" 'bs-show)
(global-set-key "\C-c\C-c" 'comment-region)

(defconst *dmacro-key* [?\C-:] "dmacro key")
(global-set-key *dmacro-key* 'dmacro-exec)
(autoload 'dmacro-exec "dmacro" nil t)

(autoload 'kill-summary "kill-summary" nil t)
(global-set-key "\M-y" 'kill-summary)

(load-library "tails-history")
(define-key minibuffer-local-map [?\C-p] 'tails-previous-history-element)
(define-key minibuffer-local-completion-map [?\C-p] 'tails-previous-history-element)
(define-key minibuffer-local-must-match-map [?\C-p] 'tails-previous-history-element)
(define-key minibuffer-local-ns-map [?\C-p] 'tails-previous-history-element)

(define-key minibuffer-local-map [?\C-n] 'tails-next-history-element)
(define-key minibuffer-local-completion-map [?\C-n] 'tails-next-history-element)
(define-key minibuffer-local-must-match-map [?\C-n] 'tails-next-history-element)
(define-key minibuffer-local-ns-map [?\C-n] 'tails-next-history-element)

(require 'auto-save-buffers)
(run-with-idle-timer 2.0 t 'auto-save-buffers)
(require 'install-elisp)
(setq install-elisp-repository-directory "~/.emacs.d/site-lisp/")


(cond ((featurep 'carbon-emacs-package)
;;; for carbon emacs
(setq mac-command-key-is-meta nil)
(setq mac-option-modifier 'meta)
;; (setq inferior-lisp-program "clisp -K full -E UTF-8")
(setq inferior-lisp-program "sbcl")
(add-to-list 'load-path "~/.emacs.d/site-lisp/slime/")
;; (when window-system
;;   (setq load-path (cons "~/tools/clbuild/source/slime" load-path)))
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
				   (ecl   ("ecl") :coding-system utf-8-unix)
				   (cmucl ("cmucl") :coding-system nil)))
(setq slime-default-lisp 'sbcl)
;; (setq slime-net-coding-system 'utf-8-unix)
(setq common-lisp-hyperspec-root "/opt/local/share/doc/lisp/HyperSpec-7-0/HyperSpec/")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(slime-complete-symbol-function (quote slime-fuzzy-complete-symbol)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
)
(t
(set-language-environment "UTF-8")
(setq slime-net-coding-system 'utf-8-unix)

;; load slime:
(setq load-path (cons "/Users/southly/Documents/src/clbuild/source/slime" load-path))
(setq load-path (cons "/Users/southly/Documents/src/clbuild/source/slime/contrib" load-path))
(setq slime-backend "/Users/southly/Documents/src/clbuild/.swank-loader.lisp")
(setq inhibit-splash-screen t)
(load "/Users/southly/Documents/src/clbuild/source/slime/slime")
(setq inferior-lisp-program "/Users/southly/Documents/src/clbuild/clbuild --implementation sbcl lisp")
(setq slime-use-autodoc-mode nil)
(slime-setup '(slime-fancy slime-tramp slime-asdf))
;(slime)
))