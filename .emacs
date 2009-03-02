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
(setq history-length 500)
 
(global-set-key [delete] 'delete-char)
(global-set-key [?\C-h] 'backward-delete-char)
(global-set-key [?\C-x ?\C-b] 'bs-show)
(global-set-key [?\C-c ?\C-c] 'comment-region)
(substitute-key-definition 'toggle-read-only 'view-mode ctl-x-map)

(cond ((featurep 'carbon-emacs-package)
       ;; for carbon emacs
       (load-library "carbon-init"))
      (t
       ))

(defun insert-date ()
  (interactive)
  (let ((date-string (mapcar #'format-time-string '("%Y-%m-%d" "%Y-%m-%dT%H:%M"))))
    (insert (completing-read "Date Format: "
                             date-string
                             nil
                             t
                             (car date-string)))))
