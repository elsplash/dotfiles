;; -*- lexical-binding: t; -*-
;; | hooks.el |
;; |----------|
;; The hooks for some niche shit

(require 'use-package)

(load "~/.my.emacs/funcs.el")

;; I don't know how else I'm supposed to do this
(use-package eglot
  :ensure nil
  :hook
  (rust-ts-mode . eglot-ensure)
  (c-ts-mode . eglot-ensure)
  (c++-ts-mode . eglot-ensure))

(add-hook 'org-mode #'my/org-mode-setup)
