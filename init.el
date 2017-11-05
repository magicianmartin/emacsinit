;;; package --- init
;;; Commentary:
;;; Code:

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/cyw/")

(require 'init-sysenv)
(require 'init-packages)
(require 'init-themes)
(require 'init-which-key)
(require 'init-window-number)

(require 'init-helm)
(require 'init-projectile)

(require 'init-flycheck)
(require 'init-elpy)


;;; init ends here
