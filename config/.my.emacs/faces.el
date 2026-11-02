;; -*- lexical-binding: t; -*-
;; | faces.el |
;; |----------|
;; Sets the fonts for the faces in GUI Emacs

(load "~/.my.emacs/funcs")

(set-face-attribute
 'default nil
 :family "Iosevka"
 :height 110
 :weight 'semi-bold)

(set-face-attribute
 'variable-pitch nil
 :family "Outfit"
 :height 110)

(set-face-attribute
 'fixed-pitch nil
 :family "JetBrains Mono"
 :height 100)
