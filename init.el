;; Package managers

(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)

;; Custom set variables

(custom-set-variables
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(beacon-color "#cc6666")
 '(custom-enabled-themes '(atom-one-dark))
 '(custom-safe-themes
   '("9e39a8334e0e476157bfdb8e42e1cea43fad02c9ec7c0dbd5498cf02b9adeaf1" default))
 '(fci-rule-color "color-237")
 '(fill-column 80)
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'dark)
 '(org-confirm-babel-evaluate nil)
 '(org-export-backends '(ascii html icalendar latex md odt))
 '(package-selected-packages
   '(visual-ascii-mode markdown-toc adoc-mode flycheck-vale grip-mode markdown-mode org org-ac atom-one-dark-theme color-theme-sanityinc-tomorrow))
 '(safe-local-variable-values '((org-html-toplevel-hlevel . 3) (org-html-postamble)))
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]])
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#cc6666")
     (40 . "#de935f")
     (60 . "#f0c674")
     (80 . "#b5bd68")
     (100 . "#8abeb7")
     (120 . "#81a2be")
     (140 . "#b294bb")
     (160 . "#cc6666")
     (180 . "#de935f")
     (200 . "#f0c674")
     (220 . "#b5bd68")
     (240 . "#8abeb7")
     (260 . "#81a2be")
     (280 . "#b294bb")
     (300 . "#cc6666")
     (320 . "#de935f")
     (340 . "#f0c674")
     (360 . "#b5bd68")))
 '(vc-annotate-very-old-color nil)
 '(window-divider-mode nil))
(custom-set-faces
 )

;; Theme settings

(load-theme 'atom-one-dark t)

;; Init settings

(tool-bar-mode -1)
(menu-bar-mode -1)
(add-hook 'text-mode-hook 'linum-mode)
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(server-start)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Default eval languages

(org-babel-do-load-languages
   'org-babel-load-languages
   '((dot     . t)
     (latex   . t)
     (shell   . t)
     (python  . t)
     (js      . t)
     (ditaa   . t)
     (ocaml   . t)
     (java    . t)
     (scheme  . t)
     (plantuml . t)
     (ditaa   . t)
     (sqlite  . t)
     (gnuplot . t)
     (ditaa  . t)
     (C      . t)
     (ledger . t)
     (org    . t)))

(setq org-babel-python-command "python3")

;; Misc

(setq confirm-kill-emacs 'y-or-n-p)
(setq org-html-validation-link nil)
(setq ispell-dictionary "english")
(setq backup-directory-alist `(("." . "~/.saves")))
(setq org-toggle-link-display t)
(setq-default indent-tabs-mode nil)
(put 'upcase-region 'disabled nil)
(setq org-export-html-postamble nil)

;; Custom linum setup

(require 'linum)
(global-linum-mode t)
(setq linum-format (lambda (line) (propertize (format (let ((w (length (number-to-string (count-lines (point-min) (point-max)))))) (concat "%"(number-to-string w) "d ")) line) 'face 'linum)))

;; If using WSL, uncomment the lines below
;; (let ((cmd-exe "/mnt/c/Windows/System32/cmd.exe")
;;       (cmd-args '("/c" "start")))
;;   (when (file-exists-p cmd-exe)
;;     (setq browse-url-generic-program  cmd-exe
;; 	  browse-url-generic-args     cmd-args
;; 	              browse-url-browser-function 'browse-url-generic)))
;; (xterm-mouse-mode 1)
