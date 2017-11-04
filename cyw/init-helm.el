;;; package --- init-helm

;;; Commentary:
;;; https://emacs-helm.github.io/helm/
;;; https://github.com/emacs-helm/helm/wiki#install
;;; Code:

(require 'helm-config)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-x C-b") #'helm-buffers-list)
(helm-mode t)

(provide 'init-helm)
;;; init-helm ends here
