;;; package --- init
;;; Commentary:
;;; Code:

(setq package-enable-at-startup nil)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/cyw/")

(require 'init-packages)
(use-package init-baseenv)

(use-package init-themes)
(use-package init-which-key)
;; (use-package init-window-number)
(use-package init-avy)
(use-package init-counsel)
(use-package init-highlight-parentheses)

;; (use-package init-highlight-symbol)

(use-package init-magit)
(use-package init-flycheck)

;; (use-package init-elpy)
(use-package init-pylsp)
(use-package init-org)
(use-package init-custom)
;;; init ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (magit-status zenburn-theme window-numbering which-key use-package plantuml-mode molokai-theme magit-gerrit highlight-symbol highlight-parentheses helm-projectile flycheck elpy counsel-projectile cnfonts avy ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
