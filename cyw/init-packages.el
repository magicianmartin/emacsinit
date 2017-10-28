(require 'package) ;; You might already have this line
;; 使用稳定版的MELPA
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))


;; elpy image+ plantuml-mode which-key smex window-numbering helm ace-jump-mode

;; cl - common lisp extension
(require 'cl)


;; install packages
(defvar cyw/packages '(
		       which-key
		       smex
		       window-numbering
		       molokai-theme
		       elpy
		       plantuml-mode
		       ace-jump-mode))

(setq package-selected-packages cyw/packages)

(defun cyw/packages-installed-p ()
  (loop for pkg in cyw/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (cyw/packages-installed-p)
  (message "%s" "Refreshing packages...")
  (package-refresh-contents)
  (dolist (pkg cyw/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))


(provide 'init-packages)
