;; -*- lexical-binding: t; -*-
;; | .emacs |
;; |--------|
;; This is the best configuration

;; Taking some inspiration from Tsoding dotfiles :P
(setq custom-file "~/.emacs.custom.el")
(package-initialize)

(load "~/.my.emacs/settings")
(load "~/.my.emacs/keybinds")
(load "~/.my.emacs/hooks")

(load "~/.my.emacs/rc")

(my/rc/use-theme 'atom-one-dark)

;; Corfu setup
(my/rc/fetch-pkg 'corfu)
(require 'corfu)

(setq corfu-quit-at-boundary nil)
(setq corfu-quit-no-match nil)
(setq corfu-preselect nil)
(setq corfu-preview-current t)
(setq corfu-cycle t)

(global-corfu-mode 1)

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

;; Just activate evil
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

;; For the modeline
(my/rc/fetch-pkg 'sleek-modeline)
(require 'sleek-modeline)
(sleek-modeline-mode 1)

;; Magit
(my/rc/fetch-pkg 'magit)
(require 'magit)
(global-set-key (kbd "C-c m s") 'magit-status)
(global-set-key (kbd "C-c m l") 'magit-log)

(my/rc/fetch-pkg
 'rust-mode
 'zig-mode
 'markdown-mode
 'consult
 'jinx
 'org-modern)

(load-file custom-file)
