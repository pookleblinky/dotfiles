;; Package repos
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
         '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;slime
(add-to-list 'load-path "~/.emacs.d/elpa/slime")
(require 'slime-autoloads)

(package-initialize) ;; You might already have this line


