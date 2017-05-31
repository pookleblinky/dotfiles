;; Not just todo/done
(setq org-todo-keywords
      '(
        (sequence "TODO(t)" "STARTED(s)" "NEXT(n)" "|" "DONE(d)")))

;; Enforce dependencies
(setq org-enforce-todo-dependencies t)

;; Timestamp when marked done
(setq org-log-done (quote time))
;; Timestamp when deadline is changed
(setq org-log-redeadline (quote time))
(setq org-log-reschedule (quote time))

;; Org mode Templates
(setq org-capture-templates
      '(("t" "Todo" entry (file "~/org/refile.org")
	 "* TODO %? %U")
	("n" "Notes" entry (file "~/org/refile.org")
	 "* Note %? %U")
	;; Specific actions
	("l" "language of the day" entry (file+datetree "~/org/orgfile.org")
	 "* Language of the day: %? %U")
	("j" "Journal entry" entry (file+datetree "~/org/orgfile.org")
	 "* %? %U" :empty-lines 1)
	("b" "Blogpost" entry (file+datetree "~/org/blog.org")
	 "* DRAFT Title: %? %U")))
       
;; Refile targets
(setq org-refile-targets '((nil :maxlevel . 9)
			   (org-agenda-files :maxlevel . 9)))
(setq org-outline-path-complete-in-steps nil) ; Refile at once
(setq org-refile-use-outline-path t)          ; show full path

;; Show the future
(setq org-agenda-start-on-weekday nil)

;; Easy template for elisp in org-mode
(add-to-list 'org-structure-template-alist '("se"
                                             "#+BEGIN_SRC emacs-lisp\n?\n#+END_SRC"))
;; Easy template for frog header
(add-to-list 'org-structure-template-alist
	     ;; Ugly, but works
             '("sb"
	       "\s\s\s\sTitle:\n\s\s\s\sDate:(insert-date-time)\n\s\s\s\sTags:\n\n"))

