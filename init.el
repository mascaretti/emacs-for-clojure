;;; EMACS CONFIGURATION FOR CLOJURE

;;; Code
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


;; PACKAGES
(straight-use-package 'magit)
(straight-use-package 'paredit)
(straight-use-package 'projectile)
(straight-use-package 'rainbow-delimiters)


;; Org Journal
(straight-use-package 'org-journal)
(customize-set-variable 'org-journal-dir "~/org/journal/")
(customize-set-variable 'org-journal-date-format "%A, %d %B %Y")
(customize-set-variable 'org-journal-file-type 'year)
(require 'org-journal)
