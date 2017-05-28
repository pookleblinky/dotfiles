;; Aliases for faster M-x

(defalias 'list-buffers 'ibuffer) ; always use ibuffer

;; elisp
(defalias 'lf 'load-file)

;; major modes
(defalias 'gm 'geiser-mode)
(defalias 'lm 'lisp-mode)
(defalias 'sm 'scheme-mode)
(defalias 'om 'org-mode)
(defalias 'em 'evil-mode)

;; minor modes
(defalias 'af 'auto-fill-mode)

;; Easy template for elisp in org-mode
(add-to-list 'org-structure-template-alist '("se"
                                             "#+BEGIN_SRC emacs-lisp\n?\n#+END_SRC"))
