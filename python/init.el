
;;start python init.el
(require 'py-autopep8)
(setq py-autopep8-options '("--max-line-length=200"))
(setq flycheck-flake8-maximum-line-length 200)
(py-autopep8-enable-on-save)

(flymake-mode t)
;;errorやwarningを表示する
(require 'flymake-python-pyflakes)
(flymake-python-pyflakes-load)
