;;; 
;;;

(add-to-list 'load-path "~/.emacs.d/site-lisp")
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq truncate-partial-width-windows t)
(setq-default truncate-lines t)
(line-number-mode t)
(column-number-mode t)
(blink-cursor-mode nil)
(setq user-full-name "NANRI")
(setq user-mail-address "southly@gmail.com")
(setq-default indent-tabs-mode nil) 

(global-set-key [delete] 'delete-char)
(global-set-key [?\C-h] 'backward-delete-char)
(global-set-key [?\C-x ?\C-b] 'bs-show)
(global-set-key [?\C-c ?\C-c] 'comment-region)

(cond ((featurep 'carbon-emacs-package)
       ;; for carbon emacs
       (load-library "carbon-init"))
      (t
       ))

(defun insert-date ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))
