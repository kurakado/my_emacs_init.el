
;;start common init.el
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(global-set-key (kbd "C-x <left>")  'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <up>")    'windmove-up)
(global-set-key (kbd "C-x <down>")  'windmove-down)

(global-set-key (kbd "M-ESC ESC") 'keyboard-quit)

;;バックアップファイルの保存場所を指定
(setq backup-directory-alist '((".*" . "~/.emacs_history")))
