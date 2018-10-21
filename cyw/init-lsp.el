

(pyvenv-mode)
(pyvenv-workon "uwsgi")

(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(use-package lsp-mode
  :ensure t
  :config
  (lsp-define-stdio-client lsp-python "python"
                           (lsp-make-traverser #'(lambda (dir)
                                                   (directory-files dir nil
                                                                    "\\(__init__\\|setup\\)\\.py\\|Pipfile")))
                           '("pyls"))
  (add-hook 'python-mode-hook
            (lambda ()
              (lsp-python-enable)))

  (setq lsp-message-project-root-warning t)
  (use-package lsp-imenu
    :init
    (add-hook 'lsp-after-open-hook 'lsp-enable-imenu))
  
  (use-package lsp-ui
    :ensure t
    :config
    (setq lsp-ui-sideline-ignore-duplicate t)
    (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
    (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
    :init
    (add-hook 'lsp-mode-hook 'lsp-ui-mode)
    (add-hook 'python-mode-hook 'flycheck-mode))
  
  (use-package company-lsp
    :config
    (push 'company-lsp company-backends)))


(provide 'init-lsp)

