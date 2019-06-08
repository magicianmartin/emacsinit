;;; package --- init-org
;;; Commentary:
;;; Code:


(use-package org
  :config
  ;; 代码块语法高亮
  (setq org-src-fontify-natively t)
  ;; (with-eval-after-load 'org (add-to-list 'org-mode-hook (lambda () (setq truncate-lines nil))))
  (add-to-list 'org-mode-hook (lambda () (setq truncate-lines nil)))
  )

;; 导出PDF的设置
;; 生成PDF文件需要使用到 xelatex 程序，安装了 texlive 后就有了 xelatex 程序。完全安装 texlive 可以使用如下指令：
;; sudo dnf install texlive-scheme-full
(use-package ox-latex
  :after (org)
  :config
  ;; (require 'ox-latex)
  (setq org-latex-compiler "xelatex")
  (add-to-list 'org-latex-classes
               '("cxeart"
                 "\\documentclass{article}
\\usepackage{xeCJK}%使用xeCJK宏包处理中文
\\usepackage[colorlinks=true,linkcolor=blue,urlcolor=blue,menucolor=blue,%超链接等使用蓝色
  pdfstartview=FitH]{hyperref}%默认输出的PDF文件打开时为适合宽度
\\usepackage{indentfirst}%段首缩进需要的宏包
\\setlength{\\parindent}{2em}%设置段首缩进两个汉字"
                ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")
                 ))

  (add-to-list 'org-latex-classes
               '("cxebook"
                 "\\documentclass{book}
\\usepackage{xeCJK}%使用xeCJK宏包处理中文
\\usepackage[colorlinks=true,linkcolor=black,urlcolor=black,menucolor=black,%超链接等使用黑色
  pdfstartview=FitH]{hyperref}%默认输出的PDF文件打开时为适合宽度
\\usepackage{indentfirst}%段首缩进需要的宏包
\\setlength{\\parindent}{2em}%设置段首缩进两个汉字"
                 ("\\part{%s}" . "\\part*{%s}")
                 ("\\chapter{%s}" . "\\chapter*{%s}")
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ))

  (setq org-latex-default-class "cxeart")
;;   (add-to-list 'org-latex-classes
;;                '("ctexart"
;;                  "\\documentclass[hyperref, UTF8, a4paper]{ctexart}
;; \\usepackage[colorlinks=true,CJKbookmarks=false,linkcolor=blue,
;; urlcolor=blue,menucolor=blue,pdfstartview=FitH]{hyperref}"
;;                  ("\\section{%s}" . "\\section*{%s}")
;;                  ("\\subsection{%s}" . "\\subsection*{%s}")
;;                  ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;;                  ("\\paragraph{%s}" . "\\paragraph*{%s}")
;;                  ("\\subparagraph{%s}" . "\\subparagraph*{%s}")
;;                  ))

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
\\usepackage{xeCJK}"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\begin{frame}[fragile]\\frametitle{%s}"
                  "\\end{frame}")))
  )

(provide 'init-org)
;;; init-org ends here
