; -*- lexical-binding: t; -*-
;; | .emacs |
;; |--------|
;; This is the best configuration

;; Taking some inspiration from Tsoding dotfiles :P
(setq custom-file "~/.emacs.custom.el")
(load-file custom-file)
(package-initialize)

(load "~/.my.emacs/faces")
(load "~/.my.emacs/settings")
(load "~/.my.emacs/keybinds")
(load "~/.my.emacs/treesit")
(load "~/.my.emacs/hooks")
(load "~/.my.emacs/eglot")
(load "~/.my.emacs/funcs")

(load "~/.my.emacs/rc")

(my/rc/fetch-pkg 'zenburn-theme)
(require 'zenburn-theme)
(load-theme 'zenburn)

;; Ligatures!
(my/rc/fetch-pkg 'ligature)
(require 'ligature)
(ligature-set-ligatures 'prog-mode '("|||>" "<|||" "<==>" "<!--" "||=" "||>" ":::"
                                     "=:=" "===" "==>" "=!=" "!==" ">>=" ">>>"
                                     "->>" "-->" "<||" "<|>" "<=>" "<<=" "<<<" "..."
                                     "+++" "///" "^=" "**" "*/" "||" "|}" "|=" "|>"
                                     "{|" "::" ":=" "==" "=>" "!=" "!!" ">:" ">=" ">>"
                                     "->" "--" "<|" "<:" "<$" "<=" "<>" "<-" "<<" "++"
                                     "??" "/*" "/=" "//" "__"))
(global-ligature-mode)

;; Vertico
(my/rc/fetch-pkg 'vertico)
(require 'vertico)
(vertico-mode 1)

;; Marginalia
(my/rc/fetch-pkg 'marginalia)
(require 'marginalia)
(marginalia-mode 1)

;; Evil Mode
(my/rc/fetch-pkg 'evil)
(require 'evil)
(evil-mode 1)

(setq evil-insert-state-message nil)
(setq evil-replace-state-message nil)
(setq evil-normal-state-message nil)
(setq evil-motion-state-message nil)
(setq evil-visual-char-message nil)
(setq evil-visual-block-message nil)
(setq evil-visual-line-message nil)
(setq evil-visual-state-message nil)

(define-key evil-normal-state-map (kbd ":") 'execute-extended-command)
(define-key evil-motion-state-map (kbd ":") 'execute-extended-command)
(define-key evil-visual-state-map (kbd ":") 'execute-extended-command)

;; Make evil treat _ as part of the word
;; since, who the hell made this the way it is?
(modify-syntax-entry ?_ "w")

;; For multiple cursors
(my/rc/fetch-pkg 'multiple-cursors)
(require 'multiple-cursors)

(global-set-key (kbd "M-p") 'mc/mark-previous-lines)
(global-set-key (kbd "M-n") 'mc/mark-next-lines)

(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)

(my/rc/fetch-pkg
 'rust-mode
 'zig-mode
 'markdown-mode
 'consult
 'orderless
 'jinx
 'org-modern
 'cmake-mode
 )
