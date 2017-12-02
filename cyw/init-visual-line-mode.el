;;; package --- init-visual-line-mode
;;; Commentary:
;;; Code:

;; 全局启用visual-line-mode，视觉上的换行。
;; (global-visual-line-mode 1)

;; 设置编程模式时不要自动换行
;; truncate-lines: Automatically becomes buffer-local when set.
(add-hook 'prog-mode-hook (lambda () (setq truncate-lines 1)))

(setq truncate-partial-width-windows nil)

(provide 'init-visual-line-mode)
;;; init-visual-line-mode ends here
