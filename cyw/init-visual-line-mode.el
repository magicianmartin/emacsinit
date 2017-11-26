;;; package --- init-visual-line-mode
;;; Commentary:
;;; Code:

;; 全局启用visual-line-mode，视觉上的换行。
;; (global-visual-line-mode 1)

;; (add-hook 'prog-mode-hook (lambda () (setq truncate-lines 1)))


;; (toggle-truncate-lines -1)

(setq truncate-partial-width-windows 9999)
(setq truncate-lines nil)

(provide 'init-visual-line-mode)
;;; init-visual-line-mode ends here
