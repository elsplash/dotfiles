;; -*- lexical-binding: t; -*-
;; | treesit.el |
;; |------------|
;; A configuration file for Treesitter settings

;; The list of Treesitter packages
(setq treesit-language-source-alist
      '((rust    "https://github.com/tree-sitter/tree-sitter-rust")
        (c       "https://github.com/tree-sitter/tree-sitter-c")
        (cpp     "https://github.com/tree-sitter/tree-sitter-cpp")
        (c-sharp "https://github.com/tree-sitter/tree-sitter-c-sharp")
        (python  "https://github.com/tree-sitter/tree-sitter-python")))

;; Check if Treesitter major modes are installed.
(dolist (source treesit-language-source-alist)
  (let ((lang (car source)))
    (unless (treesit-language-available-p lang)
      (treesit-install-language-grammar lang))))

;; Remapping
(defvar my/remap-alist '((rust-mode    . rust-ts-mode)
                         (c-mode       . c-ts-mode)
                         (c++-mode     . c++-ts-mode)
                         (csharp-mode  . csharp-ts-mode)
                         (python-mode  . python-ts-mode)))


(dolist (remap my/remap-alist)
  (add-to-list 'major-mode-remap-alist remap))
