;; -*- lexical-binding: t; -*-
;; | The settings |
;; |--------------|
;; One of the best settings ;)

(setq-default tab-width                     4)
(setq-default indent-tabs-mode              nil)
(setq-default display-line-numbers-type     'relative)
(setq-default truncate-lines                t)
(setq-default line-spacing				    0)
(setq-default fill-column                   80)
(setq-default display-fill-column-indicator 80)
(setq-default display-fill-column-indicator-character ?█)

(setq save-place-limit            15)
(setq saveplace-forget-unreadable 1)
(setq dired-listing-switches      "-lha --group-directories-first")
(setq backup-directory-alist      `(("." . "~/.emacs.d/backups")))
(setq auto-save-default           t)
(setq display-line-numbers-type   'relative)

(scroll-bar-mode 0)
(tool-bar-mode   0)
(menu-bar-mode   0)

(global-display-fill-column-indicator-mode 1)
(global-display-line-numbers-mode 1)
(global-visual-line-mode 1)
(column-number-mode 1)
(show-paren-mode 1)
(save-place-mode 1)
