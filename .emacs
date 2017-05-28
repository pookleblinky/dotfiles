;;A work in progress
;;Licensed under the Motherfucking Software License
;;pookleblinky AT gmail DOT com
(package-initialize)

(require 'cl)
(require 'evil)
(require 'key-chord)
(require 'org)
(require 'helm-config)
(require 'powerline)
(require 'powerline-evil)

(helm-mode 1)

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
(load-library "web") ; w3m
(load-library "org") ; org-mode

;; Org mode
;; Too much duplication. Concat dirs at some point
(setq org-directory "~/org")
(setq org-agenda-files (list
			"~/org/code.org"
			"~/org/blog.org"
                         "~/org/orgfile.org"))
(setq org-default-notes-file "~/org/orgfile.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (powerline-evil powerline helm markdown-mode+ markdown-mode
		    w3m alchemist clojure-project-mode erlang
		    elixir-mode key-chord evil paredit geiser
		    yaml-mode color-theme-solarized color-theme
		    ruby-mode macrostep haskell-mode
		    clojure-mode-extra-font-locking cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
