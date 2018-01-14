;;; package --- init-custom
;;; Commentary:
;;; Code:

;; screenshot
(defun chuyw-init-capture-screen()
  (defun chuyw-capture-screen()
    ""
    (interactive)
    (lower-frame)
    (setq img-name
	  (concat (make-temp-name "img-") ".png"))
    (call-process "i_view32" nil nil nil (format "/capture=4 /convert=.\\img\\%s" img-name))
    ;; (shell-command (concat "i_view32 /capture=4 /convert=" ".\\img\\" (format "%s" img-name)))
    (insert (concat "[[./img/" img-name "]]"))
    (shell-command (format "mspaint .\\img\\%s" img-name))
    )

  (with-eval-after-load 'org (define-key org-mode-map (kbd "C-c r") 'chuyw-capture-screen))
  )

(when (not (eq nil window-system))
  (chuyw-init-capture-screen))

(provide 'init-custom)
;;; init-custom ends here
