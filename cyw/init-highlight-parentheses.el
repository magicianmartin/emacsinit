;;; package --- init-highlight-parentheses
;;; Commentary:
;;; Code:

(use-package highlight-parentheses
  :ensure t
  ;; :hook (prog-mode . (function (lambda () (highlight-parentheses-mode 1))))
  :config
  (setq hl-paren-colors '("Green" "Orange" "Yellow" "Red"))
  (setq hl-paren-background-colors '("Yellow"))
  (add-hook 'prog-mode-hook (lambda () (highlight-parentheses-mode 1)))
  )
;; (add-to-list 'prog-mode-hook (lambda () (highlight-parentheses-mode 1)))

;; (setq hl-paren-colors '("Green" "Orange" "Yellow" "Red"))

(provide 'init-highlight-parentheses)
;;; init-highlight-parentheses ends here
