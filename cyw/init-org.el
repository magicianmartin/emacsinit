;;; package --- init-org
;;; Commentary:
;;; Code:


;; orgmode中文本语法高亮
(setq org-src-fontify-natively t)
(with-eval-after-load 'org (add-to-list 'org-mode-hook (lambda () (setq truncate-lines nil))))

(provide 'init-org)
;;; init-org ends here
