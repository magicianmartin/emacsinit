;;; package --- init-baseenv
;;; Commentary:
;;; Code:


;; (use-package cnfonts
;;   :config
;;   (cnfonts-enable))

;; 中英文字体设置
(when (display-graphic-p)
  ;; Setting English Font
  ;; (set-face-attribute 'default nil :font "Courier New 12")
  ;; (set-face-attribute 'default nil :font "Consolas 12")
  (when (eq system-type 'windows-nt)
    (set-face-attribute 'default nil :font "Lucida Console 10"))
  ;; Setting Chinese Font
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset (font-spec :family "文泉驿等宽微米黑")))
  (setq english-fonts-scale 1.0)
  (setq chinese-fonts-scale 1.35)
  (setq face-font-rescale-alist `(("Lucida Console" . english-fonts-scale)
                                  ("文泉驿等宽微米黑" . chinese-fonts-scale)
                                  ("Microsoft Yahei" . chinese-fonts-scale)
                                  ("Microsoft_Yahei" . chinese-fonts-scale)
                                  ("微软雅黑" . chinese-fonts-scale)
                                  ("WenQuanYi Zen Hei" . chinese-fonts-scale))))
  
;; 设置toolbar的显示和隐藏，当参数是负数时隐藏toolbar，其它则显示toolbar
(use-package tool-bar
  :config
  (tool-bar-mode -1))
;; 关闭menubar
(use-package menu-bar
  :config
  (menu-bar-mode -1))
;; 关闭文件滑动控件
(use-package scroll-bar
  :config
  (scroll-bar-mode -1))
;; 简化确认输入
(fset 'yes-or-no-p 'y-or-n-p)
;; 显示行号  在emacs26中使用 global-display-line-numbers-mode 代替 global-linum-mode
(global-display-line-numbers-mode)
;; (global-linum-mode) ;; 效率太低
;; 高亮当前行
(global-hl-line-mode t)

;; 设置系统语言环境
(set-language-environment 'Chinese-GB18030)
;; 设置系统文件格式和字符集
(prefer-coding-system 'utf-8-unix)

;; 
(global-set-key (kbd "M-SPC") 'set-mark-command)

;; 关闭启动提示
(setq inhibit-splash-screen t)
;; 关闭文件备份
(setq make-backup-files nil)
;; 关闭自动保存文件
(setq auto-save-default nil)
;; 换行的设置
(setq truncate-partial-width-windows nil)
(add-to-list 'prog-mode-hook (lambda () (setq truncate-lines t)))
(add-to-list 'prog-mode-hook (lambda () (hs-minor-mode nil)))

;; Tabs, Space, Indentation Setup
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; 最大化窗口
(setq initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'init-baseenv)
;;; init-baseenv ends here
