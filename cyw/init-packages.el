;;; package --- init-packages
;;; Commentary:
;;; code:
;; (require 'package) ;; You might already have this line
;; 使用稳定版的MELPA
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; (add-to-list 'package-archives
;;             '("melpa" . "http://melpa.org/packages/"))
;; 使用emacs-china的镜像源
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; cl - common lisp extension
;; (require 'cl)

;; compile the not compiled el
;; (byte-recompile-directory (expand-file-name "~/.emacs.d/elpa") 0)
(eval-when-compile
  (when (not (package-installed-p 'use-package))
    (progn
      (require 'cl)
      (message "%s" "Refreshing packages...")
      (package-refresh-contents)
      (package-install 'use-package)))
  )

;; install packages
;; (defvar cyw/packages '(
;;                        use-package
;;                        which-key
;;                        counsel
;;                        swiper
;;                        counsel-projectile
;;                        helm
;;                        helm-projectile
;;                        projectile
;;                        window-numbering
;;                        molokai-theme
;;                        zenburn-theme
;;                        elpy
;;                        flycheck
;;                        plantuml-mode
;;                        ace-jump-mode
;;                        magit
;;                        magit-gerrit
;;                        highlight-symbol
;;                        highlight-parentheses
;;                        ))

;; (setq package-selected-packages cyw/packages)

;; (defun cyw/packages-installed-p ()
;;   (loop for pkg in cyw/packages
;; 	when (not (package-installed-p pkg)) do (return nil)
;; 	finally (return t)))

;; (unless (cyw/packages-installed-p)
;;   (message "%s" "Refreshing packages...")
;;   (package-refresh-contents)
;;   (dolist (pkg cyw/packages)
;;     (when (not (package-installed-p pkg))
;;       (package-install pkg))))


(provide 'init-packages)
;;; init-packages ends here
