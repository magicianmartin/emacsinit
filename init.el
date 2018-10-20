;;; package --- init
;;; Commentary:
;;; Code:

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/cyw/")

(require 'init-baseenv)
(require 'init-packages)
(require 'init-themes)
(require 'init-which-key)
;; (require 'init-window-number)

;; (require 'init-org)
;; (require 'init-highlight-symbol)
(require 'init-highlight-parentheses)
(require 'init-counsel)
;; (require 'init-helm)
(require 'init-projectile)
(require 'init-magit)

;; (require 'init-flycheck)
;; (require 'init-elpy)
(require 'init-lsp)

(require 'init-custom)
;;; init ends here
