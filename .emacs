;;pookleblinky's .emacs.
;;A work in progress
;;Licensed under the Motherfucking Software License
;;pookleblinky AT gmail DOT com

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cl)
(require 'evil)
(require 'key-chord)

(defvar emacs-root "/home/pook/")

(add-to-list 'load-path (concat emacs-root "emacs"))


(labels ((add-path (p)
		   (add-to-list 'load-path
				(concat emacs-root p))))
  (add-path "emacs/lisp") ; personal elisp
  (add-path "slime")      ; Slime (from git)
  )


(load-library "funcs") ; My functions
(load-library "repos") ; My repos
(load-library ".custom") ; customizations
(load-library "ekeys")   ; keybindings
(load-library "my-aliases") ; aliases


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (key-chord evil paredit geiser yaml-mode color-theme-solarized color-theme ruby-mode macrostep haskell-mode clojure-mode-extra-font-locking cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
