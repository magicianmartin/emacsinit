;;; package --- init-highlight-parentheses
;;; Commentary:
;;; Code:

(add-to-list 'prog-mode-hook (lambda () (highlight-parentheses-mode 1)))

(setq hl-paren-colors '("Green" "Orange" "Yellow" "Red"))

(provide 'init-highlight-parentheses)
;;; init-highlight-parentheses ends here
