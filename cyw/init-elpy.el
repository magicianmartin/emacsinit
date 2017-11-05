
(elpy-enable)

;;; 指令 pyvenv-workon 的正常工作需要环境变量 WORKON_HOME 有正确的值，例如
;;; [martin@fedoramartin ~]$ echo $WORKON_HOME
;;; /home/martin/.virtualenvs
(pyvenv-workon "uwsgi")

;;; elpy的代码浏览功能需要使用其它的库，例如rope。需要在python环境中安装其所使用的库。


(provide 'init-elpy)
