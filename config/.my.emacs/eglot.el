;; -*- lexical-binding: t; -*-
;; | eglot.el |
;; |----------|
;; This might be cooked.

(require 'eglot)

;; The normal modes, if I haven't installed the treesit packages yet.
(add-hook 'c-mode-hook      #'eglot-ensure)
(add-hook 'c++-mode-hook    #'eglot-ensure)
(add-hook 'rust-mode-hook   #'eglot-ensure)
(add-hook 'python-mode-hook #'eglot-ensure)
(add-hook 'csharp-mode-hook #'eglot-ensure)

;; the treesitter modes.
(add-hook 'c-ts-mode-hook      #'eglot-ensure)
(add-hook 'c++-ts-mode-hook    #'eglot-ensure)
(add-hook 'rust-ts-mode-hook   #'eglot-ensure)
(add-hook 'python-ts-mode-hook #'eglot-ensure)
(add-hook 'csharp-ts-mode-hook #'eglot-ensure)

;; Add the LSPs to eglot.
(add-to-list 'eglot-server-programs
             '((rust-ts-mode-hook rust-mode-hook) .
               ("rust-analyzer" :initializationOptions (:check (:command "clippy")))))

(add-to-list 'eglot-server-programs
             '((c-ts-mode-hook c-mode-hook) .
               ("clangd" "--background-index" "--clang-tidy" "--header-insertion=never")))

(add-to-list 'eglot-server-programs
             '((c++-ts-mode-hook c++-mode-hook) .
               ("clangd" "--background-index" "--clang-tidy" "--header-insertion=never")))
