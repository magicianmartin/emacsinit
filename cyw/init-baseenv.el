;;; package --- init-baseenv
;;; Commentary:
;;; Code:
;; 中英文字体设置
(when (eq system-type 'windows-nt)
  ;; Setting English Font
  (set-face-attribute 'default nil :font "Consolas 12")
  ;; Setting Chinese Font
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
		      charset (font-spec :family "微软雅黑" :size 18))))

  
;; 关闭启动提示
(setq inhibit-splash-screen t)
;; 设置toolbar的显示和隐藏，当参数是负数时隐藏toolbar，其它则显示toolbar
(tool-bar-mode -1)
;; 关闭menubar
(menu-bar-mode -1)
;; 关闭文件滑动控件
(scroll-bar-mode -1)
;; 简化确认输入
(fset 'yes-or-no-p 'y-or-n-p)
;; 显示行号
(global-linum-mode)
;; 高亮当前行
(global-hl-line-mode t)
;; 最大化窗口
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 关闭文件备份
(setq make-backup-files nil)
;; 关闭自动保存文件
(setq auto-save-default nil)

;; 设置系统文件格式和字符集
(prefer-coding-system 'utf-8-unix)
;; (set-buffer-file-coding-system 'unix)

;; 换行的设置
(setq truncate-partial-width-windows nil)
(add-to-list 'prog-mode-hook (lambda () (setq truncate-lines t)))

(global-set-key (kbd "M-SPC") 'set-mark-command)

(provide 'init-baseenv)
;;; init-baseenv ends here
