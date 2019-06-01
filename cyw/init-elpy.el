;;; package --- init elpy
;;; Commentary:
;;; code:
;;; 指令 pyvenv-workon 的正常工作需要环境变量 WORKON_HOME 有正确的值，例如
;;; [martin@fedoramartin ~]$ echo $WORKON_HOME
;;; /home/martin/.virtualenvs
;;; elpy的代码浏览功能需要使用其它的库，例如rope, jedi。需要在python环境中安装其所使用的库。

(use-package elpy
  :config
  (elpy-enable)
  (use-package pyvenv
    :config
    (pyvenv-workon "uwsgi")
    )
  )


(provide 'init-elpy)
;;; init-elpy ends here
