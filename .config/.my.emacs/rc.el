;; -*- lexical-binding: t; -*-
;; | rc.el |
;; |-------|
;; Taken from Tsoding :P

(add-to-list 'package-archives
             '("melpa". "https://melpa.org/packages/") t)

(defvar my/rc/has-refr-contents nil)

(defun my/rc/refr-contents ()
  "Refreshes the package contents"
  (when (not my/rc/has-refr-contents)
    (setq my/rc/has-refr-contents t)
    (package-refresh-contents)))

(defun my/rc/fetch-one-pkg (package)
  "Fetches one package, while also calling my/rc/refr-contents"
  (when (not (package-installed-p package))
    (my/rc/refr-contents)
    (package-install package)))

(defun my/rc/fetch-pkg (&rest packages)
  "This fetches a list of given packages"
  (dolist (package packages)
    (my/rc/fetch-one-pkg package)))
