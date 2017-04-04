(require 'package) ;; You might already have this line

;; 使用稳定版的MELPA
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
    (flycheck which-key smex window-numbering helm ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; 中英文字体设置
;; Setting English Font
(set-face-attribute
  'default nil :font "Consolas 12")
;; Setting Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
		    charset
		    (font-spec :family "Microsoft Yahei" :size 12)))

;;-------------------------------------------------------------------

;; ace-jump
(add-to-list 'load-path "~/.emacs.d/elpa/ace-jump-mode-2.0/ace-jump-mode.el/in/")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;; you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
;; enable a more powerful jump back function from ace jump mode
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;; helm
;; https://github.com/emacs-helm/helm
(helm-mode 1)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)

;; smex
;; To auto-start Smex every time you open Emacs add these lines to your .emacs file:
;; (require 'smex) ; Not needed if you use package.el
;; (smex-initialize) ; Can be omitted. This might cause a (minimal) delay
;;                   ; when Smex is auto-initialized on its first run.
;; Bind some keys:
;; 
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
;; Run Smex. (Type M-x, if that's your key binding).

;; which-key emacs快捷键提示工具
;; https://github.com/justbur/emacs-which-key
(which-key-mode)
(which-key-setup-side-window-right-bottom)

;; window-numbering
(window-numbering-mode)

;; add ag to exec-path
(add-to-list 'exec-path "c:/cygwin/bin")

;; emacs self setting
(setq tool-bar-mode nil)
(global-linum-mode)
(setq make-backup-files nil)
;; 设置窗口最大化
(toggle-frame-maximized)
;; M-SPC set-mark-command
(global-set-key (kbd "M-SPC") 'set-mark-command)
