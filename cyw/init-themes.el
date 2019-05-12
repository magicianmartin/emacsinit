;; set for molokai
;; (when (package-installed-p 'molokai-theme)
;;   (load-theme 'molokai t))
;; (when (package-installed-p 'zenburn-theme)
;;   (load-theme 'zenburn t))

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

(provide 'init-themes)
