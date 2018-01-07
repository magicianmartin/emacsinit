;;; package --- init-custom
;;; Commentary:
;;; Code:



;; screenshot
(defun chuyw-capture-screen()
  ""
  (interactive)
  (lower-frame)
  (setq img-name
        (concat (make-temp-name "img-") ".png"))
  (shell-command (concat "i_view32 /capture=4 /convert=" ".\\img\\" (format "%s" img-name)))
  (insert (concat "[[./img/" img-name "]]"))
  (shell-command (format "mspaint .\\img\\%s" img-name))
  )

;; (with-eval-after-load 'org-mode (define-key org-mode-map (kbd "C-c r") 'chuyw-capture-screen))

(provide 'init-custom)
;;; init-custom ends here
