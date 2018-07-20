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
               "\\documentclass[11pt, hyperref, UTF8, a4paper]{ctexart}
\\usepackage[colorlinks=true,CJKbookmarks=false,linkcolor=blue,
urlcolor=blue,menucolor=blue,pdfstartview=FitH]{hyperref}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")
               ))

;; from other
;; (add-to-list 'org-latex-classes
;;              ;; beamer class, for presentations
;;              '("beamer"
;;                "\\documentclass[11pt,professionalfonts]{beamer}
;; \\mode
;; \\usetheme{{{{Warsaw}}}}
;; %\\usecolortheme{{{{beamercolortheme}}}}
;; \\beamertemplateballitem
;; \\setbeameroption{show notes}
;; \\institute{{{{beamerinstitute}}}}
;; \\subject{{{{beamersubject}}}}"
;;                ("\\section{%s}" . "\\section*{%s}")
;;                ("\\begin{frame}[fragile]\\frametitle{%s}"
;;                 "\\end{frame}"
;;                 "\\begin{frame}[fragile]\\frametitle{%s}"
;;                 "\\end{frame}")))

;; a simple beamer
(add-to-list 'org-latex-classes
             ;; beamer class, for presentations
             '("beamer"
               "\\documentclass[11pt,professionalfonts,UTF8]{beamer}
\\mode<beamer>{\\usetheme[hideothersubsections,right,width=22mm]{PaloAlto}}
\\beamertemplateballitem
\\setbeameroption{show notes}
\\institute{magician}
\\subject{{{{beamersubject}}}}
\\usepackage{ctex}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\begin{frame}[fragile]\\frametitle{%s}"
                "\\end{frame}")))

(provide 'init-org)
;;; init-org ends here
