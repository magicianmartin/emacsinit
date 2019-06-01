;;; package --- init python lsp
;;; Commentary:
;;; Code:

(use-package pyvenv
  :ensure t
  )

(use-package lsp-mode
  :hook (python-mode . lsp)
  :commands lsp
  :config
  ;; If you prefer flycheck and lsp-ui-flycheck is available, (setq lsp-prefer-flymake nil). If set to :none neither of two will be enabled.
  (setq lsp-prefer-flymake nil)
  )

;; optionally
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)
(use-package company-lsp
  :ensure t
  :commands company-lsp)
;; (use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; (use-package lsp-treemacs :commands lsp-treemacs-errors-list)
;; optionally if you want to use debugger
;; (use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

(provide 'init-pylsp)
;;; init-pylsp ends here
