;; | func.el |
;; |---------|
;; Completely necessary functions.

(defun my/kill-othr-wind ()
  "Switches to the other window and kills it."
  (interactive)
  (other-window 1)
  (delete-window))

(defun my/transpose-line ()
  "Puts the cursor on the swapped line"
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun my/cispose-line ()
  "Reverse of my/transpose-line"
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(defun my/transpose-word ()
  "Saves excursion instead of being at the end of the word switched"
  (interactive)
  (save-excursion
    (transpose-words 1)))

(defun my/auto-dired ()
  "Automatically enters dired without a prompt"
  (interactive)
  (dired default-directory))

(defun my/org-modern-setup ()
  "This sets up the org-mode-modern, and some personal shit"
  (require 'org-modern)
  (org-modern-mode 1)
  (setq org-hide-emphasis-markers t)
  (org-indent-mode 1)
  (jinx-mode 1))
