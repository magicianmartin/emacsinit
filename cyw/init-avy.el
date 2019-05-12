
(use-package avy
  :ensure t
  :bind
  ("C-." . #'avy-goto-char-timer)
  ("C-;" . #'avy-copy-line)
  ("C-: c" . #'avy-copy-region)
  ("C-: m" . #'avy-move-region)
  )

(provide 'init-avy)
;;; init-avy ends here
