;;; package --- 'init-highlight-symbol
;;; Commentary:
;;; Code:

(add-to-list 'prog-mode-hook (lambda () (highlight-symbol-mode 1)))
(add-to-list 'prog-mode-hook (lambda () (highlight-symbol-nav-mode 1)))

(provide 'init-highlight-symbol)
;;; init-highlight-symbol ends here
