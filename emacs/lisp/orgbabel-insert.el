;; General insert block
(defun org-insert-source-block (name language switches header)
  "Asks name, language, switches, header.
Inserts org-mode source code snippet"
  (interactive "sname? 
slanguage? 
sswitches? 
sheader? ")
  (insert 
   (if (string= name "")
       ""
     (concat "#+NAME: " name) )
   (format "
#+BEGIN_SRC %s %s %s

#+END_SRC" language switches header))
  (forward-line -1)
  (goto-char (line-end-position)))

;; Elisp-specific insert block
(defun org-insert-elisp-block (name switches header)
  "Asks name, switches, header. Inserts org-mode wrapper."
  (interactive "sname?
sswitches?
sheader? ")
  (insert
   (if (string= name "")
       ""
     (concat "#+NAME: " name))
   (format "
#+BEGIN_SRC emacs-lisp %s %s 

#+END_SRC" switches header))
  (forward-line -1)
  (goto-char (line-end-position)))
