;; | The settings |
;; |--------------|
;; One of the best settings ;)

(setq-default tab-width                 4)
(setq-default indent-tabs-mode          nil)
(setq-default display-line-numbers-type 'relative)
(setq-default truncate-lines            t)
(setq-default line-spacing				0)

(setq save-place-limit            15)
(setq saveplace-forget-unreadable 1)
(setq dired-listing-switches      "-alh --group-directories-first")
(setq backup-directory-alist      `(("." . "~/.emacs.d/backups")))
(setq display-line-numbers-type   'relative)
(setq initial-buffer-choice      #'my/auto-dired)

(setq treesit-language-source-alist
      '((rust "https://github.com/tree-sitter/tree-sitter-rust")
        (c "https://github.com/tree-sitter/tree-sitter-c")
        (cpp "https://github.com/tree-sitter/tree-sitter-cpp")))

(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)

(global-display-line-numbers-mode 1)
(global-visual-line-mode 1)
(column-number-mode 1)
(show-paren-mode 1)
(save-place-mode 1)
