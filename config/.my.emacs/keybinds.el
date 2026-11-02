;; -*- lexical-binding: t; -*-
;; | keybinds.el |
;; |-------------|
;; My keybinds and shit

(load "~/.my.emacs/funcs.el")

;; My own keybinds ;;
(global-set-key (kbd "C-x c")   #'my/auto-dired)
(global-set-key (kbd "TAB")      'self-insert-command)
(global-set-key (kbd "C-c d c")  'dabbrev-completion)
(global-set-key (kbd "C-c d e")  'dabbrev-expand)
(global-set-key (kbd "C-c c")    'compile)
(global-set-key (kbd "C-c q")    'my/kill-othr-wind)
(global-set-key (kbd "C-c v")    'set-mark-command)
(global-set-key (kbd "C-c w c")  'whitespace-cleanup)
(global-set-key (kbd "C-c w t")  'whitespace-mode)
(global-set-key (kbd "C-c TAB")  'eglot-code-actions)
(global-set-key (kbd "M-V")      'vterm)
(global-set-key (kbd "C-c n")    'flymake-goto-next-error)
(global-set-key (kbd "M-t")     #'my/transpose-word)
(global-set-key (kbd "C-k")     #'my/transpose-line)
(global-set-key (kbd "C-j")     #'my/cispose-line)
(global-set-key (kbd "C-c t")   #'my/transpose-chars)
