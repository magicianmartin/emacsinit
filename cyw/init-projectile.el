;;; package --- init-projectile
;;; Commentary:
;;; 参考 https://tuhdo.github.io/helm-projectile.html
;;; https://github.com/ericdanan/counsel-projectile

;;; Code:

(use-package projectile
  :config
  ;;; 启用 projectile mode
  (projectile-mode t)

  ;;; 设置补全系统为 helm
  ;;(setq projectile-completion-system 'helm)
  ;;; 设置补全系统为 ivy
  (setq projectile-completion-system 'ivy)

  ;;; 打开 helm projectile 的键绑定
  ;;(helm-projectile-on)
  (counsel-projectile-mode)

  ;;; 明确使用外部索引工具，linux系统中默认即是
  (when (eq system-type 'windows-nt)
    (setq projectile-indexing-method 'alien)
    )

  ;;; 设置切换project后默认执行命令
  ;;(setq projectile-switch-project-action 'helm-projectile-find-file)
  )

(provide 'init-projectile)
;;; init-projectile ends here
