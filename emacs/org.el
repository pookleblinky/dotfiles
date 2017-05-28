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
	 "* TODO %?\n %i\n %a")
	("n" "Notes" entry (file "~/org/refile.org")
	 "* Note %?\nAdded: %U\n")))

;; Refile targets
(setq org-refile-targets '((nil :maxlevel . 9)
			   (org-agenda-files :maxlevel . 9)))
(setq org-outline-path-complete-in-steps nil) ; Refile at once
(setq org-refile-use-outline-path t)          ; show full path

;; Show the future
(setq org-agenda-start-on-weekday nil)
