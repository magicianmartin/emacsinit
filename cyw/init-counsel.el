;;; package --- init-counsel
;;; Commentary:
;;; Code:

;; (ivy-mode 1)
;; (setq ivy-use-virtual-buffers t)
;; (setq enable-recursive-minibuffers t)
;; ;; wrap around after the first and the last candidate.
;; (setq ivy-wrap t)

;; (global-set-key "\C-s" 'swiper)
;; (global-set-key (kbd "C-c C-r") 'ivy-resume)
;; (global-set-key (kbd "<f6>") 'ivy-resume)
;; (global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; ;; (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;; ;; (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;; (global-set-key (kbd "<f1> l") 'counsel-find-library)
;; (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;; (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;; (global-set-key (kbd "C-c g") 'counsel-git)
;; (global-set-key (kbd "C-c j") 'counsel-git-grep)
;; (global-set-key (kbd "C-c k") 'counsel-ag)
;; (global-set-key (kbd "C-x l") 'counsel-locate)
;; (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;; (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

(use-package ivy
  :ensure t
  :config
  (use-package counsel
    :ensure t
    :bind
    ("M-x" . #'counsel-M-x)
    ("C-x C-f" . #'counsel-find-file)
    ;; ("<f1> f" . #'counsel-describe-function)
    ;; ("<f1> v" . #'counsel-describe-variable)
    ("<f1> l" . #'counsel-find-library)
    ("<f2> i" . #'counsel-info-lookup-symbol)
    ("<f2> u" . #'counsel-unicode-char)
    ("C-c g" . #'counsel-git)
    ("C-c j" . #'counsel-git-grep)
    ("C-c k" . #'counsel-ag)
    ("C-x l" . #'counsel-locate)
    ("C-S-o" . #'counsel-rhythmbox)
    )
  (use-package swiper
    :ensure t
    :bind
    ("C-c s" . #'swiper)
    )
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  ;; wrap around after the first and the last candidate.
  (setq ivy-wrap t)
  (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
  :bind
  ("<f6>" . #'ivy-resume)
  ("C-c C-r" . #'ivy-resume)
  )


(provide 'init-counsel)
;;; init-counsel ends here
