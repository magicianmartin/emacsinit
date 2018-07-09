;;; package --- init-org
;;; Commentary:
;;; Code:


;; orgmode中文本语法高亮
(setq org-src-fontify-natively t)
(with-eval-after-load 'org (add-to-list 'org-mode-hook (lambda () (setq truncate-lines nil))))

;; 导出PDF的设置
(require 'ox-latex)
(add-to-list 'org-latex-classes
             '("ctexart"
               "\\documentclass[10pt,hyperref,UTF8]{ctexart}
\\usepackage[colorlinks=true,CJKbookmarks=false,
linkcolor=blue,
urlcolor=blue,
menucolor=blue]{hyperref}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")
               ))

(provide 'init-org)
;;; init-org ends here
