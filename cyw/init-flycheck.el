;;; package --- init-flycheck
;;; Commentary:
;;; Code:

(use-package flycheck
  :ensure t
;;; 全局启用flycheck mode
  :hook
  ('after-init . #'global-flycheck-mode)
  )


(provide 'init-flycheck)
;;; init-flycheck ends here
