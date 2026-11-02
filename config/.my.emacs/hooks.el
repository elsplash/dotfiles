;; -*- lexical-binding: t; -*-
;; | hooks.el |
;; |----------|
;; The hooks for some niche shit

(load "~/.my.emacs/funcs.el")

;; -- Modes --
(add-hook 'org-mode #'my/org-modern-setup)
(add-hook 'c-common-hook (setq-local indent-line-function 'indent-relative))
